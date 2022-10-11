package com.gdhsweetcakejavafinal.controller.admin.author;

import com.gdhsweetcakejavafinal.dao.admin.impl.AuthorDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteAccountAdminController", value = "/admin/deleteAccountAdmin")
public class DeleteAccountAdminController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ucid = request.getParameter("ucid");
        try {
            AuthorDao dao = new AuthorDao();
            boolean check = dao.delete(ucid);
            if (check) {
                response.getWriter().write("true");
            } else {
                response.getWriter().write("false");
            }
        } catch (Exception e) {
            response.getWriter().write("false");
            e.printStackTrace();
        }


    }
}
