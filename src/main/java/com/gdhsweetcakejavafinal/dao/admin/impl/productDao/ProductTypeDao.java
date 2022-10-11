package com.gdhsweetcakejavafinal.dao.admin.impl.productDao;


import com.gdhsweetcakejavafinal.dao.admin.IProductTypeDao;
import com.gdhsweetcakejavafinal.db.DBConnect;
import com.gdhsweetcakejavafinal.model.Customer;
import com.gdhsweetcakejavafinal.model.ProductType;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductTypeDao implements IProductTypeDao {

    @Override
    public List<ProductType> getListProduct() throws SQLException {
        List<ProductType> p = new ArrayList<>();
        String sql = "select * from loaisanpham";
        Connection connection = DBConnect.getConnect();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ProductType productT = new ProductType();
                productT.setIdTypePro(rs.getString("MaLoaiSP"));
                productT.setNameTypePro(rs.getString("TenLoaiSP"));
                p.add(productT);
            }
            ps.close();
            rs.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }

    @Override
    public boolean addPro(ProductType productType) {
        String sql = "Insert into loaisanpham(MaLoaiSP, TenLoaiSP) values(?, ?)";
        Connection connection = DBConnect.getConnect();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, productType.getIdTypePro());
            ps.setString(2, productType.getNameTypePro());

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
            String sql = "delete from loaisanpham where MaLoaiSP = ?";
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
    public boolean updateTypeProduct(ProductType type) {
        if (type != null) {
            Connection conn = DBConnect.getConnect();
            String sql = "update loaisanpham  set TenLoaiSP = ? where MaLoaiSP = ?";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1, type.getNameTypePro());
                ps.setString(2, type.getIdTypePro());
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
    public ProductType getTypeProById(String id) {
        Connection connection = DBConnect.getConnect();
        String sql = "SELECT * FROM loaisanpham WHERE MaLoaiSP = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ProductType type = new ProductType();
                type.setIdTypePro(rs.getString("MaLoaiSP"));
                type.setNameTypePro(rs.getString("TenLoaiSP"));

                ps.close();
                rs.close();
                return type;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

}
