package com.gdhsweetcakejavafinal.controller.admin.customer;

import com.gdhsweetcakejavafinal.dao.admin.impl.CustomerDao;
import com.gdhsweetcakejavafinal.model.Customer;
import com.gdhsweetcakejavafinal.service.admin.impl.CustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DeleteController", value = "/admin/deleteCustomer")
public class DeleteController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
        String cid= request.getParameter("cid");
        try {
            CustomerDao customerDao= new CustomerDao();
            boolean check = customerDao.delete(cid);
            if(check)
                response.getWriter().write("true");
            else
                response.getWriter().write("false");
        }catch (Exception e){
            response.getWriter().write("false");
            e.printStackTrace();
        }

    }
}
