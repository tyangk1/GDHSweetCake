package com.gdhsweetcakejavafinal.controller.admin.author;


import com.gdhsweetcakejavafinal.model.Admin;
import com.gdhsweetcakejavafinal.service.admin.impl.LoginService;
import com.gdhsweetcakejavafinal.tools.MaHoa;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "author", value = "/admin/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/admin/admin-dang-nhap.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        try {
            String Username = request.getParameter("username");
            String Password = request.getParameter("password");

            // hashpassword
             String hash = MaHoa.maHoaDuLieu(Password);
            Admin admin =LoginService.getInstance().login(Username, hash);
            System.out.println(admin);
            if (admin != null) {
                session.setAttribute("admin", admin);
                response.sendRedirect(request.getContextPath()+"/admin/home");
            } else {
                request.setAttribute("error", "Sai Tên Đăng Nhập Hoặc Mật Khẩu!");
                RequestDispatcher rd = request.getRequestDispatcher("/view/admin/admin-dang-nhap.jsp");
                rd.forward(request, response);
            }
        } catch ( SQLException ex) {
            ex.printStackTrace();
        }
    }



}
