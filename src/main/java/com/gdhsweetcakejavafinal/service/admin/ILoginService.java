package com.gdhsweetcakejavafinal.service.admin;

import com.gdhsweetcakejavafinal.model.Admin;

import java.sql.SQLException;

public interface ILoginService {
    public Admin login(String username, String password) throws SQLException;
//    public boolean add(Admin admin);
}
