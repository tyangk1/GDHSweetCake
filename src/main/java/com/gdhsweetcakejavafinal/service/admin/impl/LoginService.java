package com.gdhsweetcakejavafinal.service.admin.impl;

import com.gdhsweetcakejavafinal.model.Admin;
import com.gdhsweetcakejavafinal.dao.admin.impl.LoginDao;
import com.gdhsweetcakejavafinal.model.Admin;
import com.gdhsweetcakejavafinal.service.admin.ILoginService;

import java.sql.SQLException;

public class LoginService implements ILoginService {
    private static LoginService author;
    private LoginDao loginDao;

    private LoginService(){
        loginDao = new LoginDao();
    }
    public static LoginService getInstance(){
        if(author == null){
            author = new LoginService();
        }
         return  author;
    }


    public Admin login(String username, String password) throws SQLException {
        return loginDao.login(username, password);
    }

}
