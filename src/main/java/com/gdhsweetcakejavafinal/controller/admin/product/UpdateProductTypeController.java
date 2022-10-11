package com.gdhsweetcakejavafinal.controller.admin.product;

import com.gdhsweetcakejavafinal.model.Customer;
import com.gdhsweetcakejavafinal.model.ProductType;
import com.gdhsweetcakejavafinal.service.admin.impl.productService.ProductTypeService;
//import com.gdhsweetcakejavafinal.service.admin.impl.productService.ProductTypeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateProductTypeController", value = "/admin/updateProductType")
public class UpdateProductTypeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset= UTF-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String ptid= request.getParameter("ptypeid");

        ProductTypeService service = new ProductTypeService();
        ProductType p = service.getTypeProById(ptid);
        request.setAttribute("ptype", p);
        request.getRequestDispatcher("/view/admin/admin-chinh-sua-loai-san-pham.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset= UTF-8");

        ProductType pt= new ProductType();
        pt.setIdTypePro( request.getParameter("idProductType"));
        pt.setNameTypePro(request.getParameter("nameProductType"));

        ProductTypeService service= new ProductTypeService();
        service.updateTypeProduct(pt);
        response.sendRedirect("productType");
    }
}
