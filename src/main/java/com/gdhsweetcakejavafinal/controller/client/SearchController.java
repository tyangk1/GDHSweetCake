package com.gdhsweetcakejavafinal.controller.client;

import com.gdhsweetcakejavafinal.dao.client.impl.ProductDao;
import com.gdhsweetcakejavafinal.model.client.Category;
import com.gdhsweetcakejavafinal.model.client.ProductCL;
import com.gdhsweetcakejavafinal.model.client.ProductType;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchController", urlPatterns ={ "/search"})
public class SearchController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String txtSearch = request.getParameter("txt");
        ProductDao pd = new ProductDao();
        List<ProductType> listT = pd.getAllProductType();
        List<Category> listC = pd.getCategory();
        List<ProductCL> list = pd.searchByName(txtSearch);

        request.setAttribute("listP",list);
        request.setAttribute("listT", listT);
        request.setAttribute("listC", listC);
        request.setAttribute("txtS", txtSearch);
        request.getRequestDispatcher("view/client/shop.jsp").forward(request,response);

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            processRequest(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }
}
