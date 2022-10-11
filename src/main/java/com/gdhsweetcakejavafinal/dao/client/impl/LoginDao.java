package com.gdhsweetcakejavafinal.dao.client.impl;

import com.gdhsweetcakejavafinal.db.DBConnect;
import com.gdhsweetcakejavafinal.model.client.CustomerCL;
import com.gdhsweetcakejavafinal.tools.MaHoa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public CustomerCL checkLogin(String email, String matKhau){
        try {
            String query = "select * from khachhang where Email = ? AND MatKhau = ?";
            new DBConnect();
            conn = DBConnect.getConnect();
            ps = conn.prepareStatement(query);
            String mh = MaHoa.maHoaDuLieu(matKhau);
            ps.setString(1, email);
            ps.setString(2, mh);
            rs = ps.executeQuery();
            while(rs.next()) {
                CustomerCL customer = new CustomerCL(rs.getString(1), rs.getString(2));
                return customer;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
