package com.gdhsweetcakejavafinal.controller.admin.customer;

import com.gdhsweetcakejavafinal.dao.admin.impl.CustomerDao;
import com.gdhsweetcakejavafinal.model.Customer;
import com.gdhsweetcakejavafinal.service.admin.impl.CustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateCustomerController", value = "/admin/updateCustomer")
public class UpdateCustomerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset= UTF-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String cid= request.getParameter("cusid");

        CustomerService service = new CustomerService();
        Customer c= service.getCustomerById(cid);
        request.setAttribute("c", c);
        request.getRequestDispatcher("/view/admin/admin-chi-tiet-khach-hang.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html; charset= UTF-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        Customer c1= new Customer();
        c1.setIdCus(request.getParameter("idCustomer"));
        c1.setNameCus(request.getParameter("nameCustomer"));
        c1.setEmailCus(request.getParameter("emailCustomer"));
//        c1.setBirthday(request.getParameter("birthdayCustomer"));
        c1.setGender(request.getParameter("genderCustomer"));
        c1.setPassword(request.getParameter("passCustomer"));
        c1.setNumPhone(request.getParameter("numberphoneCustomer"));
        c1.setAddress(request.getParameter("addressCustomer"));

        CustomerService service= new CustomerService();
        service.updateCustomer(c1);
        response.sendRedirect("customer");


    }
}
