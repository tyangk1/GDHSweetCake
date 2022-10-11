package com.gdhsweetcakejavafinal.dao.admin.impl;

import com.gdhsweetcakejavafinal.dao.admin.ICustomerDao;
import com.gdhsweetcakejavafinal.db.DBConnect;
import com.gdhsweetcakejavafinal.model.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CustomerDao implements ICustomerDao {
    @Override
    public List<Customer> getListCus() throws SQLException {
        List<Customer> customerList = new ArrayList<>();
        String sql = "select * from khachhang";
        Connection connection = DBConnect.getConnect();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Customer cus = new Customer();
                cus.setIdCus(rs.getString("MaKH"));
                cus.setNameCus(rs.getString("TenKH"));
                cus.setEmailCus(rs.getString("Email"));
//                cus.setBirthday(rs.getString("NgaySinh"));
                cus.setGender(rs.getString("GioiTinh"));
                cus.setPassword(rs.getString("MatKhau"));
                cus.setNumPhone(rs.getString("SoDienThoai"));
                cus.setAddress(rs.getString("DiaChi"));
                customerList.add(cus);

            }
            ps.close();
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

    @Override
    public boolean addCus(Customer customer) {
        String sql = "Insert into khachhang(MaKH, TenKH, Email, GioiTinh, MatKhau, SoDienThoai, DiaChi) values(?, ?, ?, ?, ?, ?, ?)";
        Connection connection = DBConnect.getConnect();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, customer.getIdCus());
            ps.setString(2, customer.getNameCus());
            ps.setString(3, customer.getEmailCus());
//            ps.setString(4, customer.getBirthday());
            ps.setString(4, customer.getGender());
            ps.setString(5, customer.getPassword());
            ps.setString(6, customer.getNumPhone());
            ps.setString(7, customer.getAddress());

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            System.err.println("Có lỗi không thêm được thông tin. Chi tiết: " + e.getMessage());
        } finally {
            try {
                //Đóng kết nối
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override
    public boolean delete(String id) {
        PreparedStatement ps = null;
        try {
            Connection conn = DBConnect.getConnect();
            String sql = "delete from khachhang where MaKH = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            int i = ps.executeUpdate();

            return i == 1;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateCustomer(Customer customer) {
        if (customer != null) {
            Connection conn = DBConnect.getConnect();
            String sql = "update khachhang  set " +
                    "TenKH = ? ," +
                    "Email = ? ," +
//                    "NgaySinh= ? ," +
                    "GioiTinh = ? ," +
                    "MatKhau = ? ," +
                    "SoDienThoai = ? ," +
                    "DiaChi = ? " +
                    "where MaKH = ?";

            PreparedStatement ps = null;
            System.out.println(customer.getAddress());
            try {
                ps = conn.prepareStatement(sql);
//
                ps.setNString(1, customer.getNameCus());
                ps.setString(2, customer.getEmailCus());
//                ps.setString(3, customer.getBirthday());
                ps.setNString(3, customer.getGender());
                ps.setNString(4, customer.getPassword());
                ps.setString(5, customer.getNumPhone());
                ps.setNString(6, customer.getAddress());
                ps.setString(7, customer.getIdCus());
                int row = ps.executeUpdate();
                return row == 1;
            } catch (SQLException e) {
                e.printStackTrace();
                return false;
            }

        }

        return false;
    }

    public Customer getCustomerById(String id) {
        Connection connection = DBConnect.getConnect();
        String sql = "SELECT * FROM khachhang WHERE MaKH = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Customer cus = new Customer();
                cus.setIdCus(rs.getString("MaKH"));
                cus.setNameCus(rs.getString("TenKH"));
                cus.setEmailCus(rs.getString( "Email"));
//                cus.setBirthday(rs.getString("NgaySinh"));
                cus.setGender(rs.getString("GioiTinh"));
                cus.setPassword(rs.getString("MatKhau"));
                cus.setNumPhone(rs.getString("SoDienThoai"));
                cus.setAddress(rs.getString("DiaChi"));
                ps.close();
                rs.close();
                return cus;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<Customer> searchByName(String customerName) {
        List<Customer> customers = new ArrayList<Customer>();
        Connection conn = DBConnect.getConnect();
        String sql = "SELECT khachhang.* " +
                "from khachhang " +
                "where TenKH like ?";


        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            customerName = "%" + customerName + "%";
            ps.setString(1, customerName);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Customer c = new Customer();
//                setValueProduct(product, rs);
//                Color color = getColor(conn, product.getId());
                c.setIdCus(rs.getString("MaKH"));
                c.setNameCus(rs.getString("TenKH"));
                c.setEmailCus(rs.getString("Email"));
//                c.setBirthday(rs.getString("NgaySinh"));
                c.setGender(rs.getString("GioiTinh"));
                c.setPassword(rs.getString("MatKhau"));
                c.setNumPhone(rs.getString("SoDienThoai"));
                c.setAddress(rs.getString("DiaChi"));

                customers.add(c);
            }
            ps.close();
            rs.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return customers;
    }
}
