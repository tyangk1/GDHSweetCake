package com.gdhsweetcakejavafinal.controller.client;


import com.gdhsweetcakejavafinal.dao.client.impl.CustomerCLDao;
import com.gdhsweetcakejavafinal.model.client.CustomerCL;
import com.gdhsweetcakejavafinal.tools.MaHoa;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "RegisterController", urlPatterns = {"/register"})
public class RegisterController extends HttpServlet {
    private CustomerCLDao customerCLDao = new CustomerCLDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        processRequest(req,resp);
//        super.doPost(req, resp);
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        String user_name = req.getParameter("user-name");
        String user_email = req.getParameter("user-email");
        String user_pass = req.getParameter("user-pass");

        String user_name_err = "", user_email_err = "", user_pass_err = "";
        if(user_name.equals("")){
            user_name_err="Vui lòng nhập họ tên của bạn!";
        }
        if(user_name_err.length()>0){
            req.setAttribute("user_name_err",user_name_err);
        }
        if(user_email.equals("")){
            user_email_err="Vui lòng nhập email!";
        }
        else{
            if(customerCLDao.checkAccount(user_email)){
                user_email_err="Địa chỉ email đã được đăng ký !";
            }
        }
        if(user_email_err.length()>0){
            req.setAttribute("user_email_err",user_email_err);
        }
        if(user_pass.equals("")){
            user_pass_err += "Vui lòng nhập mật khẩu!";
        }
        if(user_pass.length()<8 & !user_pass.equals("")){
            user_pass_err += "Mật khẩu phải dài hơn 8 kí tự!";
        }
        if(user_pass_err.length()>0){
            req.setAttribute("user_pass_err",user_pass_err);
        }
        req.setAttribute("user_name",user_name);
        req.setAttribute("user_email",user_email);
        req.setAttribute("user_pass",user_pass);


        String url = "/view/client/login.jsp";
        try{
            Random r = new Random();
            int value = r.nextInt(999) +17;
            if(user_pass_err.length()==0 && user_email_err.length()==0 && user_name_err.length()==0){
                CustomerCL customerCL = new CustomerCL("KH"+value, user_name, user_email, null, MaHoa.maHoaDuLieu(user_pass), null, null);
                customerCLDao.insert(customerCL);
                url= "/view/client/login.jsp";
            }
            else{
                System.out.println("Lỗi !!! ");
            }
            RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
            rd.forward(req,resp);
        }catch (Exception e){
            e.printStackTrace();
        };
    }
}
