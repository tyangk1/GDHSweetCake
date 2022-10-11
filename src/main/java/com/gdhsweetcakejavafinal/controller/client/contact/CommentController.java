package com.gdhsweetcakejavafinal.controller.client.contact;

import com.gdhsweetcakejavafinal.dao.client.impl.ContactDao;
import com.gdhsweetcakejavafinal.model.client.Comment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CommentController",value = "/comment")
public class CommentController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/view/client/contact.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("nameComment");
        String email = request.getParameter("emailComment");
        String comments = request.getParameter("txtComments");

        ContactDao contactDao = new ContactDao();
        Comment c=new Comment(name,email,comments);
        contactDao.addComment(c);
        response.sendRedirect("contact");
    }
}
