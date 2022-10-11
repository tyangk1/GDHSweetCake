package com.gdhsweetcakejavafinal.controller.client;

import com.gdhsweetcakejavafinal.dao.client.impl.BlogDao;
import com.gdhsweetcakejavafinal.dao.client.impl.ProductDao;
import com.gdhsweetcakejavafinal.model.client.Blog;
import com.gdhsweetcakejavafinal.model.client.Category;
import com.gdhsweetcakejavafinal.model.client.ProductType;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BlogController", value= "/blog")
public class BlogController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");

        BlogDao dao = new BlogDao();
        List<Blog> list = dao.getListBlog();

        ProductDao pd=new ProductDao();
        List<ProductType> listT = pd.getAllProductType();
        List<Category> listC = pd.getCategory();


        request.setAttribute("listT", listT);
        request.setAttribute("listC", listC);
        request.setAttribute("listB",list);
        request.getRequestDispatcher("/view/client/blog.jsp").forward(request,response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }
}
