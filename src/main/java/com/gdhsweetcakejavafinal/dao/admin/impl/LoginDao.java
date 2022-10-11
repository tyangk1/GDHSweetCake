package com.gdhsweetcakejavafinal.dao.admin.impl;

import com.gdhsweetcakejavafinal.dao.admin.ILoginDao;
import com.gdhsweetcakejavafinal.db.DBConnect;
import com.gdhsweetcakejavafinal.model.Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao implements ILoginDao {
    public LoginDao() {
    }


    // kiểm tra đăng nhập
    @Override
    public Admin login(String username, String password) throws SQLException {
        Connection connection = DBConnect.getConnect();
        String sql = "Select * from accadmin where TenNgD= ? and MatKhau= ?";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, username);
        ps.setString(2, password);
        ResultSet result = ps.executeQuery();
        Admin admin = null;
        if (result.next()) {
            admin = new Admin();
            admin.setNameAccount(result.getString("HotenNgD"));
            admin.setUsername(result.getString("TenNgD"));
            admin.setImg(result.getString("LinkHinhAnh"));
            admin.setEmail(result.getString("Email"));
        }
        return admin;
    }


}
