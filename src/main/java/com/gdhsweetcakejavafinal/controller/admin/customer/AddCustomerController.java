package com.gdhsweetcakejavafinal.controller.admin.customer;

import com.gdhsweetcakejavafinal.dao.admin.impl.CustomerDao;
import com.gdhsweetcakejavafinal.model.Customer;
import com.gdhsweetcakejavafinal.service.admin.impl.CustomerService;
import com.gdhsweetcakejavafinal.tools.MaHoa;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddCustomerController", value = "/admin/addCustomer")
public class AddCustomerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset= UTF-8");
        request.getRequestDispatcher("/view/admin/admin-them-khach-hang.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset= UTF-8");
        String idCustomer= request.getParameter("idCustomer");
        String nameCustomer= request.getParameter("nameCustomer");
        String emailCustomer= request.getParameter("emailCustomer");
        String genderCustomer= request.getParameter("genderCustomer");
        String passCustomer= request.getParameter("passCustomer");
        String numberphoneCustomer= request.getParameter("numberphoneCustomer");
        String addressCustomer= request.getParameter("addressCustomer");

        String hash = MaHoa.maHoaDuLieu(passCustomer);

        Customer customer= new Customer(idCustomer,nameCustomer,emailCustomer,genderCustomer,hash,numberphoneCustomer,addressCustomer);
        CustomerService service= new CustomerService();
        service.addCus(customer);
        response.sendRedirect("customer");


    }
}
