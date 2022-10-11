package com.gdhsweetcakejavafinal.controller.admin.product;

import com.gdhsweetcakejavafinal.model.Product;
import com.gdhsweetcakejavafinal.model.ProductDetails;
import com.gdhsweetcakejavafinal.model.ProductType;
import com.gdhsweetcakejavafinal.service.admin.impl.productService.ProductService;
import com.gdhsweetcakejavafinal.service.admin.impl.productService.ProductTypeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddProductController", value = "/admin/addProduct")
public class AddProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset= UTF-8");
        request.getRequestDispatcher("/view/admin/admin-them-sp.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        Product p= new Product();
        System.out.println("add product");
        try {
            response.setContentType("text/html; charset= UTF-8");
            String idProduct= request.getParameter("idProduct");
            p.setIdPro(idProduct);
            String idProductType= request.getParameter("idProductType");
            p.setIdProType(idProductType);
            String nameProduct= request.getParameter("nameProduct");
            p.setNamePro(nameProduct);
            ProductDetails details= new ProductDetails();
            details.setIdPro(idProduct);
            p.setProductDetails(details);
            String imgProduct= request.getParameter("imgProduct");
            details.setLinkImg(imgProduct);
            String descriptionProduct= request.getParameter("descriptionProduct");
            details.setDescribe(descriptionProduct);
            Double priceProduct=Double.parseDouble(request.getParameter("priceProduct"));
            details.setPrice(priceProduct);
            ProductService service= new ProductService();
            boolean ok = service.addProduct(p,details);
            if(ok){
                request.setAttribute("message1","Thêm thành công");
                request.getRequestDispatcher("/view/admin/admin-them-sp.jsp").forward(request,response);
            }else {
                request.setAttribute("message","Thêm không thành công");
                request.setAttribute("product",p);
                request.getRequestDispatcher("/view/admin/admin-them-sp.jsp").forward(request,response);
            }

        }catch (Exception e){
            request.setAttribute("message","Thêm không thành công");
            request.setAttribute("product",p);
            request.getRequestDispatcher("/view/admin/admin-them-sp.jsp").forward(request,response);
        }


    }
}
