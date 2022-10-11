package com.gdhsweetcakejavafinal.dao.admin.impl;

import com.gdhsweetcakejavafinal.dao.admin.IAuthorDao;
import com.gdhsweetcakejavafinal.db.DBConnect;
import com.gdhsweetcakejavafinal.model.Admin;
import com.gdhsweetcakejavafinal.model.Customer;
import com.gdhsweetcakejavafinal.tools.MaHoa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AuthorDao implements IAuthorDao {
    @Override
    public List<Admin> getListAuthor() throws SQLException {
        List<Admin> author = new ArrayList<>();
        String sql = "select * from accadmin";
        Connection connection = DBConnect.getConnect();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Admin admin = new Admin();
                admin.setId(rs.getString("MaNgD"));
                admin.setUsername(rs.getString("TenNgD"));
                admin.setEmail(rs.getString("Email"));
                admin.setImg(rs.getString("LinkHinhAnh"));
                admin.setPermission(rs.getString("QuyenHan"));
                author.add(admin);
            }
            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return author;
    }

    @Override
    public boolean addAuthor(Admin admin) {
        System.out.println(admin);
        String sql = "Insert into accadmin(MaNgD, HoTenNgD,TenNgD, LinkhinhAnh, MatKhau,QuyenHan,Email) values(?, ?, ?, ?, ?, ?, ?)";
        Connection connection = DBConnect.getConnect();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, admin.getId());
            ps.setString(2, admin.getNameAccount());
            ps.setString(3, admin.getUsername());
            ps.setString(4, admin.getImg());
            ps.setString(5, admin.getPassword());
            ps.setString(6, admin.getPermission());
            ps.setString(7, admin.getEmail());

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
            String sql = "delete from accadmin where MaNgD = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            int i = ps.executeUpdate();

            return i == 1;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean updateAccount(Admin admin) {
        if (admin != null) {
            Connection conn = DBConnect.getConnect();
            String sql = "update accadmin  set " +
                    "TenNgD = ? ," +
                    "QuyenHan = ? ," +
                    "Email = ? " +
                    "where MaNgD = ?";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
//
                ps.setNString(1, admin.getUsername());
                ps.setNString(2, admin.getPermission());
                ps.setString(3, admin.getEmail());
                ps.setString(4, admin.getId());
                int row = ps.executeUpdate();
                return row == 1;
            } catch (SQLException e) {
                e.printStackTrace();
                return false;
            }

        }

        return false;
    }

    @Override
    public Admin getAccountById(String id) {
        Connection connection = DBConnect.getConnect();
        String sql = "SELECT * FROM accadmin WHERE MaNgD = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Admin admin = new Admin();
                admin.setId(rs.getString("MaNgD"));
//                admin.setNameAccount(rs.getString("TenTaiKhoanNgD"));
                admin.setUsername(rs.getString("TenNgD"));
                admin.setImg(rs.getString("LinkHinhAnh"));
//                admin.setPassword(rs.getString("MatKhau"));
                admin.setPermission(rs.getString("QuyenHan"));
                admin.setEmail(rs.getString("Email"));
                ps.close();
                rs.close();
                return admin;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public static void main(String[] args) {
        AuthorDao authorDao = new AuthorDao();
        authorDao.addAuthor(new Admin("US02", "TranNhatDuc", "AdminD", "	view/admin/dist/img/logo-avt.jp",  "Administrator", MaHoa.maHoaDuLieu("123"), "19130051@st.hcmuaf.edu.vn"));
    }
}
