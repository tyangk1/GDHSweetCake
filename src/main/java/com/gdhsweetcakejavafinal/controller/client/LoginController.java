package com.gdhsweetcakejavafinal.controller.client;

import com.gdhsweetcakejavafinal.dao.client.impl.CustomerCLDao;
import com.gdhsweetcakejavafinal.dao.client.impl.LoginDao;
import com.gdhsweetcakejavafinal.dao.client.impl.ProductDao;
import com.gdhsweetcakejavafinal.model.client.Category;
import com.gdhsweetcakejavafinal.model.client.CustomerCL;
import com.gdhsweetcakejavafinal.model.client.ProductType;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Get use, pass from Cookie
        ProductDao pd = new ProductDao();
        List<ProductType> listT = pd.getAllProductType();
        List<Category> listC = pd.getCategory();
        request.setAttribute("listT", listT);
        request.setAttribute("listC", listC);

        request.getRequestDispatcher("/view/client/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        String email = request.getParameter("user-email");
        String password = request.getParameter("user-pass");
        LoginDao loginDao = new LoginDao();
        CustomerCLDao clDao = new CustomerCLDao();
        try {
            CustomerCL customer = loginDao.checkLogin(email, password);
            if (customer != null) {
                CustomerCL customerCLLogin = clDao.viewAll(email);
                HttpSession session = request.getSession();

                session.setAttribute("accountLogin", customerCLLogin);
                response.sendRedirect(request.getContextPath() + "/welcome");
            } else {
                request.setAttribute("errorMsg", "Email hoặc mật khẩu sai !!!");
                RequestDispatcher rd = request.getRequestDispatcher("/view/client/login.jsp");
                rd.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
