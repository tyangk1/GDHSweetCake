package com.gdhsweetcakejavafinal.controller.admin.product;

import com.gdhsweetcakejavafinal.dao.admin.impl.CustomerDao;
import com.gdhsweetcakejavafinal.dao.admin.impl.productDao.ProductTypeDao;
import com.gdhsweetcakejavafinal.service.admin.impl.productService.ProductTypeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteProTypeController", value = "/admin/deleteProductType")
public class DeleteProTypeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ptid= request.getParameter("ptid");
        try {
            ProductTypeService service= new ProductTypeService();
           boolean check= service.delete(ptid);
           if(check){
               response.getWriter().write("true");
           }else {
               response.getWriter().write("false");
           }
        }catch (Exception e){
            response.getWriter().write("false");
            e.printStackTrace();
        }
    }
}
