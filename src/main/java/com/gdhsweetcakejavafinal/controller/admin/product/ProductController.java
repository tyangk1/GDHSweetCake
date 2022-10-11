package com.gdhsweetcakejavafinal.controller.admin.product;

import com.gdhsweetcakejavafinal.model.Product;
import com.gdhsweetcakejavafinal.service.admin.impl.productService.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductCUPController", value = "/admin/product")
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maLoai1 = request.getParameter("maLoai1");
        String maLoai2 = request.getParameter("maLoai2");
        String maLoai3 = request.getParameter("maLoai3");
        List<Product> p = null;
        if (maLoai2 != null && maLoai3 != null) {
            p = ProductService.getInstance().getListProduct(maLoai1, maLoai2, maLoai3);
        } else if (maLoai2 != null) {
            p = ProductService.getInstance().getListProduct(maLoai1, maLoai2);
        } else {
            p = ProductService.getInstance().getListProduct(maLoai1);
        }
        request.setAttribute("products", p);

        request.getRequestDispatcher("/view/admin/admin-san-pham.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

    }
}
