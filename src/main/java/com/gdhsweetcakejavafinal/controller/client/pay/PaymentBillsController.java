package com.gdhsweetcakejavafinal.controller.client.pay;

import com.gdhsweetcakejavafinal.dao.admin.impl.CustomerDao;
import com.gdhsweetcakejavafinal.dao.client.impl.CustomerCLDao;
import com.gdhsweetcakejavafinal.dao.admin.impl.productDao.ProductDao;
import com.gdhsweetcakejavafinal.model.Customer;
import com.gdhsweetcakejavafinal.model.Order;
import com.gdhsweetcakejavafinal.model.OrderDetails;
import com.gdhsweetcakejavafinal.model.Product;
import com.gdhsweetcakejavafinal.model.client.CartDetail;
import com.gdhsweetcakejavafinal.model.client.CustomerCL;
import com.gdhsweetcakejavafinal.service.admin.impl.OrderService;
import com.gdhsweetcakejavafinal.service.client.impl.CartDetailServices;
import com.gdhsweetcakejavafinal.tools.GenerateId;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet(name = "PaymentBillsController", value = "/payment-bills")
public class PaymentBillsController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession ss = request.getSession();
        ProductDao productDao = new ProductDao();
        CustomerCLDao customerCLDao = new CustomerCLDao();
        CustomerDao customerDao = new CustomerDao();
        CustomerCL customerCL = new CustomerCL();
        String namCustomer = request.getParameter("name-customer");
        String addressCustomer = request.getParameter("address-customer");
        String phoneCustomer = request.getParameter("phone-customer");
        String emailCustomer = request.getParameter("email-customer");
        double sale = Double.parseDouble(request.getParameter("sale"));
        double moneyPay = Double.parseDouble(request.getParameter("moneyPay"));
        String noteDelivery = request.getParameter("note-delivery");
        if (ss.getAttribute("accountLogin") == null) {

            customerCL.setMaKH(GenerateId.generateId("KH"));
            customerCL.setDiaChi(addressCustomer);
            customerCL.setMatKhau(GenerateId.generateId("123"));
            customerCL.setSdt(phoneCustomer);
            customerCL.setEmail(emailCustomer);
            customerCL.setTenKH(namCustomer);
            customerCLDao.insert(customerCL);
        } else {
            customerCL = (CustomerCL) ss.getAttribute("accountLogin");
            Customer customer = new Customer();

            customer.setIdCus(customerCL.getMaKH());
            customer.setPassword(customerCL.getMatKhau());
            customer.setEmailCus(customerCL.getEmail());
            customer.setGender(customerCL.getGioiTinh());
            customer.setNameCus(namCustomer);
            customer.setAddress(addressCustomer);
            customer.setNumPhone(phoneCustomer);
            System.out.println(customer.toString());
            customerDao.updateCustomer(customer);
        }
        Order order = new Order();
        order.setIdOrder(GenerateId.generateId("DH"));
        order.setIdCus(customerCL.getMaKH());
        order.setIntoMoney(moneyPay);
        order.setDiscounted(sale);
        order.setOrderNotes(noteDelivery);
        order.setOrderDate(new Date().toString());
        List<CartDetail> cartListDB = null;
        List<OrderDetails> orderDetails = new ArrayList<>();
        if (ss.getAttribute("accountLogin") != null) {
            CustomerCL accountLogin = (CustomerCL) ss.getAttribute("accountLogin");
            cartListDB = CartDetailServices.getInstance().getCartForImg(accountLogin.getMaKH());

        } else {
            cartListDB = (ArrayList) ss.getAttribute("listCart");

        }
        for (CartDetail cartDetail : cartListDB) {
            OrderDetails orderDetail = new OrderDetails();
            Product product = productDao.getProductById(cartDetail.getMaSP());
            orderDetail.setIdOrder(order.getIdOrder());
            orderDetail.setIdProduct(cartDetail.getMaSP());
            orderDetail.setQuantity(cartDetail.getQuantity());
            orderDetail.setNote(noteDelivery);
            orderDetail.setProducts(product);
            orderDetails.add(orderDetail);
            CartDetailServices.getInstance().delete(cartDetail.getCartId());
//            cartListDB.remove(cartDetail);
        }
        ss.setAttribute("listCart", null);
        order.setOrderDetailsList(orderDetails);
        boolean checkAddOrder = OrderService.getInstance().addOrder(order);
        if (checkAddOrder) {
            ss.setAttribute("nameCustomer", namCustomer);
            ss.setAttribute("addressCustomer", addressCustomer);
            ss.setAttribute("telephoneCustomer", phoneCustomer);
            ss.setAttribute("idOrder", order.getIdOrder());
            request.getRequestDispatcher("view/client/thankyou.jsp").forward(request, response);

        }

    }
}
