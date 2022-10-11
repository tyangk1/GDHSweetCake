package com.gdhsweetcakejavafinal.controller.admin.author;

import com.gdhsweetcakejavafinal.model.Admin;
import com.gdhsweetcakejavafinal.service.admin.impl.AuthorService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateAuthorController", value = "/admin/updateAuthor")
public class UpdateAuthorController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset= UTF-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String uid= request.getParameter("uid");

        AuthorService service = new AuthorService();
        Admin a= service.getAccountById(uid);
        request.setAttribute("a", a);
        request.getRequestDispatcher("/view/admin/admin-chinh-sua-admin.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset= UTF-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        Admin a= new Admin();
        a.setId(request.getParameter("idUser"));
        a.setEmail(request.getParameter("emailUser"));
        a.setUsername(request.getParameter("nameUser"));
//        a.setPassword(request.getParameter("passUser"));
        a.setPermission(request.getParameter("qUser"));

        AuthorService service= new AuthorService();
        service.updateAccount(a);
        response.sendRedirect("author");
    }
}
