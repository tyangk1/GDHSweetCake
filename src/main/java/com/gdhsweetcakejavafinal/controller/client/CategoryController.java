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

@WebServlet(name = "CategoryController", urlPatterns = {"/category"})
public class CategoryController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String maLoaiSP = request.getParameter("maLoaiSP");


        ProductDao pd = new ProductDao();

        String pt = pd.getNameType(maLoaiSP);

        int count = pd.getTotalProductByType(maLoaiSP);
        int endPage = count/12;
        if(count % 12 != 0){
            endPage++;
        }

        List<ProductType> listT = pd.getAllProductType();
        List<Category> listC = pd.getCategory();

        String indexPage = request.getParameter("index");
        int index = Integer.parseInt(indexPage);
        List<ProductCL> listPa = pd.pagingProduct(maLoaiSP,index);

        request.setAttribute("index", index);
        request.setAttribute("maLoaiSP",maLoaiSP);
        request.setAttribute("listP", listPa);
        request.setAttribute("endP",endPage);


        request.setAttribute("pt",pt);


//        request.setAttribute("listP", list);
//        request.setAttribute("listP", listCa);
        request.setAttribute("listT", listT);
        request.setAttribute("listC", listC);


        request.getRequestDispatcher("view/client/shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }
}
