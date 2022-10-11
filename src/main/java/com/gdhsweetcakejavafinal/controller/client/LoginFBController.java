package com.gdhsweetcakejavafinal.controller.client;

import com.gdhsweetcakejavafinal.dao.client.impl.CustomerCLDao;
import com.gdhsweetcakejavafinal.dao.client.impl.LoginDao;
import com.gdhsweetcakejavafinal.model.client.CustomerCL;
import com.gdhsweetcakejavafinal.tools.MaHoa;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Random;

@WebServlet("/Login")
public class LoginFBController extends HttpServlet {
    CustomerCLDao customerCLDao = new CustomerCLDao();
    LoginDao loginDao = new LoginDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        String action = request.getParameter("action");
        try{
        if(action.equals("Face")){
            String name  = request.getParameter("name");
            String email  = request.getParameter("email");
            String id = request.getParameter("id");
            if(!name.equals("undefined")&& !email.equals("undefined") && !id.equals("undefined")&& !customerCLDao.checkAccount(email)){
                Random r = new Random();
                int value = r.nextInt(999) +17;
                CustomerCL customerCL = new CustomerCL("KH"+value, name, email, null, MaHoa.maHoaDuLieu(id), null, null);
                customerCLDao.insert(customerCL);
                CustomerCL customerCLLogin = customerCLDao.viewAll(email);
                HttpSession session = request.getSession();
                session.setAttribute("accountLogin", customerCLLogin);
//                response.sendRedirect(request.getContextPath() + "/welcome");
            }
            else{
                CustomerCL customer = loginDao.checkLogin(email, id);
                if (customer != null) {
                    CustomerCL customerCLLogin = customerCLDao.viewAll(email);
                    HttpSession session = request.getSession();
                    session.setAttribute("accountLogin", customerCLLogin);
//                    response.sendRedirect(request.getContextPath() + "/welcome");
            }
        }
        }
        }catch (Exception e){
            e.printStackTrace();
        }
        response.sendRedirect(request.getContextPath() + "/welcome");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }}
