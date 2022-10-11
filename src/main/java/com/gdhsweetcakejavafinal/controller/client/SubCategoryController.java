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

@WebServlet(name = "SubCategoryController", value = "/subcategory")
public class SubCategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String maCategory = request.getParameter("maCategory");
        //da lay dc category id ve roi
        ProductDao pd = new ProductDao();
        List<ProductCL> list = pd.getProductBySubCategory(maCategory);
        List<ProductType> listT = pd.getAllProductType();
        List<Category> listC = pd.getCategory();

        String tenCa = pd.getNameCategory(maCategory);

        int count = pd.getTotalProductByType(maCategory);
        int endPageS = count/12;
        if(count % 12 != 0){
            endPageS++;
        }

        String indexPage = request.getParameter("index");
        int index = Integer.parseInt(indexPage);
        List<ProductCL> listPa = pd.pagingProduct(maCategory,index);


        request.setAttribute("maCategory",maCategory);
        request.setAttribute("listP", listPa);

        request.setAttribute("endP",endPageS);
        request.setAttribute("tenCa",tenCa);

//        request.setAttribute("listP", list);
        request.setAttribute("index", index);
        request.setAttribute("listT", listT);
        request.setAttribute("listC", listC);
        request.getRequestDispatcher("view/client/shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }
}
