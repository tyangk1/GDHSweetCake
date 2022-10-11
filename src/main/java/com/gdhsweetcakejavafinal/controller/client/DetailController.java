package com.gdhsweetcakejavafinal.controller.client;

import com.gdhsweetcakejavafinal.dao.client.impl.ProductDao;
import com.gdhsweetcakejavafinal.model.Product;
import com.gdhsweetcakejavafinal.model.client.Category;
import com.gdhsweetcakejavafinal.model.client.ProductCL;
import com.gdhsweetcakejavafinal.model.client.ProductType;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DetailsController", urlPatterns ={"/detail"})
public class DetailController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String maSP = request.getParameter("maSP");
        String maLoaiSP = request.getParameter("maLoaiSP");
        ProductDao pd = new ProductDao();
        ProductCL p = pd.getProductByMaSP(maSP);
        List<ProductType> listT = pd.getAllProductType();
        List<Category> listC = pd.getCategory();
        List<ProductCL> listP = pd.relatedProducts(maLoaiSP);


        request.setAttribute("detail", p);
        request.setAttribute("listT", listT);
        request.setAttribute("listC", listC);
        request.setAttribute("listP", listP);
        request.getRequestDispatcher("view/client/shop-details.jsp").forward(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        String maSP = request.getParameter("maSP");
//        ProductDao pd = new ProductDao();
//        ProductCL p = pd.getProductByMaSP(maSP);
//        List<ProductType> listT = pd.getAllProductType();
//        List<Category> listC = pd.getCategory();
//
//        request.setAttribute("detail",p);
//        request.setAttribute("listT", listT);
//        request.setAttribute("listC", listC);
//        request.getRequestDispatcher("view/client/shop-details.jsp").forward(request,response);

    processRequest(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }
}
