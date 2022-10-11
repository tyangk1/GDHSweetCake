package com.gdhsweetcakejavafinal.controller.admin.author;

import com.gdhsweetcakejavafinal.model.Admin;
import com.gdhsweetcakejavafinal.model.Customer;
import com.gdhsweetcakejavafinal.service.admin.impl.AuthorService;
import com.gdhsweetcakejavafinal.service.admin.impl.CustomerService;
import com.gdhsweetcakejavafinal.tools.MaHoa;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "AddAccountController", value = "/admin/addAccountAdmin")
public class AddAccountController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset= UTF-8");
        request.getRequestDispatcher("/view/admin/admin-them-admin.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset= UTF-8");
        String id= request.getParameter("id");
        String nameAcc= request.getParameter("nameAccount");
        String name= request.getParameter("name");
        String email= request.getParameter("email");
        String linkImg= request.getParameter("linkImg");
        String pass= request.getParameter("pass");
        String permission= request.getParameter("permission");

        String hash = MaHoa.maHoaDuLieu(pass);


        Admin admin= new Admin(id,nameAcc,name,email, linkImg,hash,permission);
        AuthorService service= new AuthorService();
        service.addAuthor(admin);
        response.sendRedirect("author");


    }
}
