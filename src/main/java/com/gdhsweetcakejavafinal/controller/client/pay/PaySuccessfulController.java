package com.gdhsweetcakejavafinal.controller.client.pay;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "PaySuccessfulController", value = "/pay-successful")
public class PaySuccessfulController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession ss = request.getSession();
        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        String namCustomer = (String) ss.getAttribute("nameCustomer");
        String addressCustomer = (String) ss.getAttribute("addressCustomer");
        String phoneCustomer = (String) ss.getAttribute("telephoneCustomer");
        String idOrder = (String) ss.getAttribute("idOrder");
        request.setAttribute("nameCustomer", namCustomer);
        request.setAttribute("addressCustomer", addressCustomer);
        request.setAttribute("telephoneCustomer", phoneCustomer);
        request.setAttribute("idOrder", idOrder);

        request.getRequestDispatcher("/pay-successful").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
