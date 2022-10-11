package com.gdhsweetcakejavafinal.controller.admin.order;

import com.gdhsweetcakejavafinal.dao.admin.impl.CustomerDao;
import com.gdhsweetcakejavafinal.model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddOrderController", value = "/admin/addOrder")
public class AddOrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("text/html; charset= UTF-8");
        String idOrder= request.getParameter("idOrder");
        String idCustomer= request.getParameter("idCustomer");
        String nameCustomer= request.getParameter("nameCustomer");
        String dateOrder= request.getParameter("dateOrder");
        String deliveryDate= request.getParameter("deliveryDate");
        String intoMoney= request.getParameter("intoMoney");
        String paymentStatus= request.getParameter("paymentStatus");



    }
}
