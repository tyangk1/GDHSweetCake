package com.gdhsweetcakejavafinal.controller.admin.product;

import com.gdhsweetcakejavafinal.model.ProductType;
import com.gdhsweetcakejavafinal.service.admin.impl.productService.ProductTypeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddProductTypeController", value = "/admin/addProductType")
public class AddProductTypeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset= UTF-8");
        request.getRequestDispatcher("/view/admin/admin-them-loai-sp.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset= UTF-8");
        String idProtype= request.getParameter("idProtype");
        String nameProtype= request.getParameter("nameProtype");

        ProductType pt= new ProductType(idProtype,nameProtype);
        ProductTypeService service= new ProductTypeService();
        service.addProduct(pt);
        response.sendRedirect("productType");


    }
}
