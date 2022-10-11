package com.gdhsweetcakejavafinal.controller.client;

import com.gdhsweetcakejavafinal.dao.client.impl.ProductDao;
import com.gdhsweetcakejavafinal.model.client.Category;
import com.gdhsweetcakejavafinal.model.client.ProductCL;
import com.gdhsweetcakejavafinal.model.client.ProductType;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PaginationController", urlPatterns = {"/paging"})
public class PaginationController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ProductDao pd = new ProductDao();

        List<ProductCL> list = pd.getAllProduct();
        List<ProductType> listT = pd.getAllProductType();
        List<Category> listC = pd.getCategory();

        String maLoaiSP = request.getParameter("maLoaiSP");
        String indexPage = request.getParameter("index");
        int index = Integer.parseInt(indexPage);


        List<ProductCL> listPa = pd.pagingProduct(maLoaiSP,index);

        request.setAttribute("index", index);
        request.setAttribute("listP", listPa);
//        request.setAttribute("listP", list);
        request.setAttribute("listT", listT);
        request.setAttribute("listC", listC);


        request.getRequestDispatcher("view/client/shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }
}
