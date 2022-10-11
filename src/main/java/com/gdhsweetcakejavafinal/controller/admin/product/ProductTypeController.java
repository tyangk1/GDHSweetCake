package com.gdhsweetcakejavafinal.controller.admin.product;


import com.gdhsweetcakejavafinal.model.ProductType;
import com.gdhsweetcakejavafinal.service.admin.impl.productService.ProductTypeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ProductTypeController", value = "/admin/productType")
public class ProductTypeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<ProductType> productTypes = ProductTypeService.getInstance().getListProduct();
            request.setAttribute("productTypes", productTypes);
            request.getRequestDispatcher("/view/admin/admin-loai-san-pham.jsp").forward(request, response);

        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }
}
