package com.gdhsweetcakejavafinal.controller.admin.product;

import com.gdhsweetcakejavafinal.model.Product;
import com.gdhsweetcakejavafinal.model.ProductDetails;
import com.gdhsweetcakejavafinal.model.ProductType;
import com.gdhsweetcakejavafinal.service.admin.impl.productService.ProductService;
import com.gdhsweetcakejavafinal.service.admin.impl.productService.ProductTypeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateProductController", value = "/admin/updateProduct")
public class UpdateProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset= UTF-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String pid= request.getParameter("pid");

        ProductService service = new ProductService();
        Product p = service.getProductById(pid);
        request.setAttribute("p", p);
        System.out.println(p);
        request.getRequestDispatcher("/view/admin/admin-chinh-sua-san-pham.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset= UTF-8");

        Product p= new Product();
        ProductDetails pt= new ProductDetails();
        p.setIdPro( request.getParameter("idProduct"));
        p.setIdProType( request.getParameter("idProductType"));
        p.setNamePro( request.getParameter("nameProduct"));
        pt.setLinkImg(request.getParameter("imgProduct"));
        pt.setDescribe(request.getParameter("descriptionProduct"));
        pt.setPrice(Double.parseDouble(request.getParameter("priceProduct")));

        p.setProductDetails(pt);

        ProductService service= new ProductService();
       boolean check= service.updateProduct(p);
       if (check){
           request.setAttribute("message1","Cập nhật thành công");
           request.setAttribute("p",p);
           request.getRequestDispatcher("/view/admin/admin-chinh-sua-san-pham.jsp").forward(request,response);
       }else {
           request.setAttribute("message","Cập nhật không thành công");
           request.setAttribute("p",p);
           request.getRequestDispatcher("/view/admin/admin-chinh-sua-san-pham.jsp").forward(request,response);
       }
//        System.out.println(request.getRequestURI()+ " "+ request.getContextPath() +" "+request.getPathInfo()+" "+request.getHttpServletMapping());
//        response.sendRedirect("home");
    }
}
