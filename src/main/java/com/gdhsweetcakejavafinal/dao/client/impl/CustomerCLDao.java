package com.gdhsweetcakejavafinal.dao.client.impl;


import com.gdhsweetcakejavafinal.dao.client.ICustomerCLDao;
import com.gdhsweetcakejavafinal.db.DBConnect;
import com.gdhsweetcakejavafinal.model.client.CustomerCL;
import com.gdhsweetcakejavafinal.tools.MaHoa;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CustomerCLDao extends DBConnect implements ICustomerCLDao {
    @Override
    public boolean checkAccount(String user_email) {
        String sql = "SELECT Email FROM khachhang WHERE Email = '" + user_email + "'";
        new DBConnect();
        Connection conn = DBConnect.getConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
            conn.close();
        } catch (SQLException e) {
            Logger.getLogger(CustomerCLDao.class.getName()).log(Level.SEVERE, null, e);
        }
        return false;
    }

    @Override
    public void insert(CustomerCL customer) {
        new DBConnect();
        Connection conn = DBConnect.getConnect();
        String sql = "INSERT INTO khachhang VALUES (?,?,?,?,?,?,?)";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, customer.getMaKH());
            ps.setString(2, customer.getTenKH());
            ps.setString(3, customer.getEmail());
            ps.setString(4, customer.getGioiTinh());
            ps.setString(5, customer.getMatKhau());
            ps.setString(6, customer.getSdt());
            ps.setString(7, customer.getDiaChi());
            ps.executeUpdate();
            conn.close();
        } catch (SQLException e) {
            Logger.getLogger(CustomerCLDao.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public void edit(CustomerCL khachHang) {

    }


    @Override
    public void delete(String maKH) {

    }

    @Override
    public CustomerCL getCustomerById(String maKH) {
        new DBConnect();
        Connection conn = DBConnect.getConnect();
        String sql = "SELECT * FROM khachhang WHERE maKH = ?";
        CustomerCL customerCL = null;
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, maKH);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                customerCL = new CustomerCL(rs.getString(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5),
                        rs.getString(6), rs.getString(7));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerCL;
    }

    @Override
    public CustomerCL viewAll(String username) {
        new DBConnect();
        Connection conn = DBConnect.getConnect();
        String sql = "SELECT * FROM khachhang WHERE email = ?";
        CustomerCL customerCL = null;
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                customerCL = new CustomerCL(rs.getString(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5),
                        rs.getString(6), rs.getString(7));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerCL;
    }

    @Override
    public List<CustomerCL> getAll() {
        List<CustomerCL> khs = new ArrayList<CustomerCL>();
        String sql = "SELECT * FROM khachhang";
        Connection conn = DBConnect.getConnect();

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                CustomerCL kh = new CustomerCL();

                kh.setMaKH(rs.getString("MaKH"));
                kh.setTenKH(rs.getString("TenKH"));
                kh.setEmail(rs.getString("Email"));
                kh.setGioiTinh(rs.getString("GioiTinh"));
                kh.setMatKhau(rs.getString("MatKhau"));
                kh.setSdt(rs.getString("SoDienThoai"));
                kh.setDiaChi(rs.getString("DiaChi"));
                khs.add(kh);
            }

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return khs;
    }
}
