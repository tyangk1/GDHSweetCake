package com.gdhsweetcakejavafinal.dao.admin;


import com.gdhsweetcakejavafinal.model.Admin;

import java.sql.SQLException;

public interface ILoginDao {
    public Admin login(String username, String password) throws SQLException;

}
