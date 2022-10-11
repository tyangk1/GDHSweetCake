package com.gdhsweetcakejavafinal.dao.admin.impl.productDao;

import com.gdhsweetcakejavafinal.dao.admin.IProductDao;
import com.gdhsweetcakejavafinal.db.DBConnect;
import com.gdhsweetcakejavafinal.model.Product;
import com.gdhsweetcakejavafinal.model.ProductDetails;
import com.gdhsweetcakejavafinal.model.ProductType;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao implements IProductDao {
    @Override
    public List<Product> getListProduct(String maLoai1) {
        List<Product> products = new ArrayList<>();
        String sql = "select sanpham.MaSP, MaLoaiSP, TenSP,LinkHinhAnh, Gia  from sanpham INNER JOIN chitietsanpham  on sanpham.MaSP= chitietsanpham.MaSP  WHERE MaLoaiSP= ?";
        Connection connection = DBConnect.getConnect();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, maLoai1);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                ProductDetails pt = new ProductDetails();
                p.setIdPro(rs.getString("MaSP"));
                p.setIdProType(rs.getString("MaLoaiSP"));
                p.setNamePro(rs.getString("TenSP"));
//                pt.setIdPro(rs.getString("MaSP"));
//                p.getProductDetails().setLinkImg(rs.getString("LinkhinhAnh"));
//                p.getProductDetails().setPrice(rs.getDouble("Gia"));
                pt.setLinkImg(rs.getString("LinkHinhAnh"));
                pt.setPrice(rs.getDouble("Gia"));
//                pt.setDescribe(rs.getString("MoTaNgan"));

                p.setProductDetails(pt);
                products.add(p);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }

    @Override
    public List<Product> getListProduct(String maLoai1, String maLoai2) {
        List<Product> products = new ArrayList<>();
        String sql = "select sanpham.MaSP, MaLoaiSP, TenSP,LinkHinhAnh, Gia  from sanpham INNER JOIN chitietsanpham  on sanpham.MaSP= chitietsanpham.MaSP  WHERE MaLoaiSP= ? OR MaLoaiSP= ? ";
//        String sql = "select sanpham.MaSP, MaLoaiSP from sanpham WHERE MaLoaiSP='CUP'";
        Connection connection = DBConnect.getConnect();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, maLoai1);
            ps.setString(2, maLoai2);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                ProductDetails pt = new ProductDetails();
                p.setIdPro(rs.getString("MaSP"));
                p.setIdProType(rs.getString("MaLoaiSP"));
                p.setNamePro(rs.getString("TenSP"));
//                pt.setIdPro(rs.getString("MaSP"));
//                p.getProductDetails().setLinkImg(rs.getString("LinkhinhAnh"));
//                p.getProductDetails().setPrice(rs.getDouble("Gia"));
                pt.setLinkImg(rs.getString("LinkHinhAnh"));
                pt.setPrice(rs.getDouble("Gia"));
//                pt.setDescribe(rs.getString("MoTaNgan"));

                p.setProductDetails(pt);
                products.add(p);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }

    @Override
    public List<Product> getListProduct(String maLoai1, String maLoai2, String maLoai3) {
        List<Product> products = new ArrayList<>();
        String sql = "select sanpham.MaSP, MaLoaiSP, TenSP,LinkHinhAnh, Gia  from sanpham INNER JOIN chitietsanpham  on sanpham.MaSP= chitietsanpham.MaSP  WHERE MaLoaiSP= ? OR MaLoaiSP= ? OR MaLoaiSP= ?";
//        String sql = "select sanpham.MaSP, MaLoaiSP from sanpham WHERE MaLoaiSP='CUP'";
        Connection connection = DBConnect.getConnect();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, maLoai1);
            ps.setString(2, maLoai2);
            ps.setString(3, maLoai3);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                ProductDetails pt = new ProductDetails();
                p.setIdPro(rs.getString("MaSP"));
                p.setIdProType(rs.getString("MaLoaiSP"));
                p.setNamePro(rs.getString("TenSP"));
//                pt.setIdPro(rs.getString("MaSP"));
//                p.getProductDetails().setLinkImg(rs.getString("LinkhinhAnh"));
//                p.getProductDetails().setPrice(rs.getDouble("Gia"));
                pt.setLinkImg(rs.getString("LinkHinhAnh"));
                pt.setPrice(rs.getDouble("Gia"));
//                pt.setDescribe(rs.getString("MoTaNgan"));

                p.setProductDetails(pt);
                products.add(p);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }

    @Override
    public boolean addProduct(Product product, ProductDetails details) {
        String sql1 = "INSERT INTO sanpham (MaSP, MaLoaiSP, TenSP) VALUES (?,?,?)";
        String sql2 = "INSERT INTO chitietsanpham (MaSP, LinkHinhAnh, MoTaNgan, Gia) VALUES (?,?,?,?)";
        Connection connection = DBConnect.getConnect();
        try {
            PreparedStatement ps1 = connection.prepareStatement(sql1);
            ps1.setString(1, product.getIdPro());
            ps1.setString(2, product.getIdProType());
            ps1.setString(3, product.getNamePro());
            PreparedStatement ps2 = connection.prepareStatement(sql2);
            ps2.setString(1, details.getIdPro());
            ps2.setString(2, details.getLinkImg());
            ps2.setString(3, details.getDescribe());
            ps2.setDouble(4, details.getPrice());

            return ps1.executeUpdate() > 0 && ps2.executeUpdate() > 0;

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
//        PreparedStatement ps = null;
        Connection conn = DBConnect.getConnect();
        try {

            String sql1 = "delete from chitietsanpham where MaSP = ?";
            String sql2 = "delete from sanpham where MaSP = ?";
            PreparedStatement ps1 = conn.prepareStatement(sql1);
            ps1.setString(1, id);
            PreparedStatement ps2 = conn.prepareStatement(sql2);
            ps2.setString(1, id);

            conn.setAutoCommit(false);
            int i1 = ps1.executeUpdate();
            int i2 = ps2.executeUpdate();

            System.out.println(i1);
            System.out.println(i2);


            boolean ok = i1 == 1 && i2 == 1;
            if (ok) {
                conn.setAutoCommit(true);
                return ok;
            } else {
                conn.rollback();
                conn.setAutoCommit(true);
            }

        } catch (SQLException e) {
            try {
                conn.rollback();
                conn.setAutoCommit(true);
            } catch (Exception e2) {

            }
            e.printStackTrace();

            return false;
        }
        return false;
    }

    @Override
    public boolean updateProduct(Product product) {
        if (product != null) {
            Connection conn = DBConnect.getConnect();
            String sql1 = "update sanpham  set TenSP = ? where MaSP = ?";
            String sql2 = "update chitietsanpham  set LinkHinhAnh = ?, MoTaNgan = ?,Gia = ? where MaSP = ?";

            try {
                PreparedStatement ps = conn.prepareStatement(sql1);
                ps.setString(1, product.getNamePro());
                ps.setString(2, product.getIdPro());
                PreparedStatement ps1 = conn.prepareStatement(sql2);
                ps1.setString(1, product.getProductDetails().getLinkImg());
                ps1.setString(2, product.getProductDetails().getDescribe());
                ps1.setDouble(3, product.getProductDetails().getPrice());
                ps1.setString(4, product.getIdPro());

                int row = ps.executeUpdate();
                int row1 = ps1.executeUpdate();
//                return row == 1 && row1 == 1;
                return true;
            } catch (SQLException e) {
                e.printStackTrace();
                return false;
            }

        }

        return false;
    }

    @Override
    public Product getProductById(String id) {
        Connection connection = DBConnect.getConnect();
        String sql = "SELECT sp.*, ct.LinkHinhAnh, ct.MoTaNgan, ct.Gia FROM sanpham sp INNER JOIN chitietsanpham ct ON sp.MaSP= ct.MaSP  WHERE sp.MaSP = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product p = new Product();
                ProductDetails pt = new ProductDetails();
                p.setIdPro(rs.getString("MaSP"));
                p.setIdProType(rs.getString("MaLoaiSP"));
                p.setNamePro(rs.getString("TenSP"));
//                pt.setIdPro(rs.getString("MaSP"));
//                p.getProductDetails().setLinkImg(rs.getString("LinkhinhAnh"));
//                p.getProductDetails().setPrice(rs.getDouble("Gia"));
                pt.setLinkImg(rs.getString("LinkHinhAnh"));
                pt.setDescribe(rs.getString("MoTaNgan"));
                pt.setPrice(rs.getDouble("Gia"));

                p.setProductDetails(pt);

                ps.close();
                rs.close();
                return p;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}
