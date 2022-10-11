package com.gdhsweetcakejavafinal.controller.client.contact;

import com.gdhsweetcakejavafinal.dao.client.impl.BlogDao;
import com.gdhsweetcakejavafinal.dao.client.impl.ContactDao;
import com.gdhsweetcakejavafinal.dao.client.impl.ProductDao;
import com.gdhsweetcakejavafinal.model.client.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ContactController", value= "/contact")
public class ContactController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        ContactDao dao = new ContactDao();
        List<StoreBranch> listContact = dao.getListStoreBranch();

        ProductDao pd=new ProductDao();
        List<ProductType> listT = pd.getAllProductType();
        List<Category> listC = pd.getCategory();


        request.setAttribute("listT", listT);
        request.setAttribute("listC", listC);

        request.setAttribute("listContact",listContact);
        request.getRequestDispatcher("/view/client/contact.jsp").forward(request,response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }
}

