package com.gdhsweetcakejavafinal.controller.admin.customer;

import com.gdhsweetcakejavafinal.model.Customer;
import com.gdhsweetcakejavafinal.service.admin.impl.CustomerService;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "SearchCustomerController", value = "/admin/searchCustomer")
public class SearchCustomerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        try {
            String txtSearch= request.getParameter("table_search");
            CustomerService service = new CustomerService();
            List<Customer> lists= service.searchByName(txtSearch);
            System.out.println(lists.size() > 0 ? lists.get(0):0);
            PrintWriter out = response.getWriter();
            Gson g = new Gson();
            out.write(g.toJson(lists));

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
