package com.gdhsweetcakejavafinal.controller.admin.author;

import com.gdhsweetcakejavafinal.model.Admin;
import com.gdhsweetcakejavafinal.service.admin.impl.AuthorService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AuthorController", value = "/admin/author")
public class AuthorController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Admin> authors= AuthorService.getInstance().getListAuthor();
            request.setAttribute("author", authors);
            request.getRequestDispatcher("/view/admin/admin-quan-li-admin.jsp").forward(request, response);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }
}
