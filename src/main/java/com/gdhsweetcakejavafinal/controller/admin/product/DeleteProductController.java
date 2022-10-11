package com.gdhsweetcakejavafinal.controller.admin.product;

import com.gdhsweetcakejavafinal.dao.admin.impl.productDao.ProductTypeDao;
import com.gdhsweetcakejavafinal.dao.client.impl.ProductDao;
import com.gdhsweetcakejavafinal.service.admin.impl.productService.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteProductController", value = "/admin/deleteProduct")
public class DeleteProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String pid= request.getParameter("pid");
//        try {
//            ProductService service= new ProductService();
//            service.delete(pid);
//            System.out.println(request.getContextPath());
//            System.out.println(request.getRequestURI());
//            System.out.println(request.getRequestURL());
//            response.sendRedirect(request.getContextPath());
//        }catch (Exception e){
//            e.printStackTrace();
//        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid= request.getParameter("pid");
        try {
            ProductService service= new ProductService();
            boolean check = service.delete(pid);
            if(check){
                response.getWriter().write("true");
            }else{
                response.getWriter().write("false");
            }
        }catch (Exception e){
            response.getWriter().write("false");

            e.printStackTrace();
        }
    }
}
