package com.gdhsweetcakejavafinal.dao.client.impl;

import com.gdhsweetcakejavafinal.dao.client.IProduct;
import com.gdhsweetcakejavafinal.db.DBConnect;
import com.gdhsweetcakejavafinal.model.Product;
import com.gdhsweetcakejavafinal.model.ProductDetails;
import com.gdhsweetcakejavafinal.model.client.Category;
import com.gdhsweetcakejavafinal.model.client.ProductCL;
import com.gdhsweetcakejavafinal.model.client.ProductCLDetails;
import com.gdhsweetcakejavafinal.model.client.ProductType;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDao implements IProduct {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    @Override
    public List<ProductCL> getAllProduct() {
        List<ProductCL> list = new ArrayList<>();
        String query = "SELECT * from sanpham JOIN chitietsanpham on sanpham.MaSP=chitietsanpham.MaSP ";
        conn = DBConnect.getConnect();
        try {

            ps = conn.prepareStatement(query);
            rs=ps.executeQuery();
            while (rs.next()){
                list.add(new ProductCL(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getDouble(7)));

            }
        } catch (Exception e) {
    e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<ProductType> getAllProductType() {
        List<ProductType> list = new ArrayList<>();
        try {
            String query = "Select  * from loaisanpham where MaLoaiSP NOT IN (Select MaCategory from category);";
            conn = DBConnect.getConnect();
            ps = conn.prepareStatement(query);
            rs=ps.executeQuery();
            while (rs.next()){
                list.add(new ProductType(rs.getString(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public List<Category> getCategory() {
        List<Category> list = new ArrayList<>();
        try {
            String query = "SELECT * from category";
            conn = DBConnect.getConnect();
            ps = conn.prepareStatement(query);
            rs=ps.executeQuery();
            while (rs.next()){
                list.add(new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)
                       ));
            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public List<ProductCL> getProductByType(String maLoaiSP) {
        List<ProductCL> list = new ArrayList<>();
        try {
            String query = "SELECT * from (sanpham join  chitietsanpham on sanpham.MaSP=chitietsanpham.MaSP) WHERE MaLoaiSP NOT IN (Select MaCategory from category) AND MaLoaiSP = ?";
            conn = DBConnect.getConnect();
            ps = conn.prepareStatement(query);
            ps.setString(1,maLoaiSP);
            rs=ps.executeQuery();
            while (rs.next()){
                list.add(new ProductCL(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getDouble(7)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public List<ProductCL> getProductBySubCategory(String maCategory) {
        List<ProductCL> list = new ArrayList<>();
        try {
            String query = "SELECT sanpham.MaSP, sanpham.MaLoaiSP, sanpham.TenSP, chitietsanpham.MaSP," +
                    " chitietsanpham.LinkHinhAnh, chitietsanpham.MoTaNgan \n" +
                    ", chitietsanpham.Gia from (loaisanpham join  category on loaisanpham.MaLoaiSP=category.MaLoaiSP)" +
                    " join sanpham on category.MaCategory = sanpham.MaLoaiSP " +
                    "join chitietsanpham on sanpham.MaSP = chitietsanpham.MaSP " +
                    "and category.MaCategory = ?";
            conn = DBConnect.getConnect();
            ps = conn.prepareStatement(query);
            ps.setString(1,maCategory);
            rs=ps.executeQuery();
            while (rs.next()){
                list.add(new ProductCL(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getDouble(7)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public ProductCL getProductByMaSP(String maSP) {
        ProductCL p = new ProductCL();
        try {
            String query = "SELECT * From chitietsanpham join sanpham on chitietsanpham.MaSP= sanpham.MaSP AND sanpham.MaSP = ?";
            conn = DBConnect.getConnect();
            ps = conn.prepareStatement(query);
            ps.setString(1,maSP);
            rs=ps.executeQuery();
            while (rs.next()){
                p.setMaSP(rs.getString("MaSP"));
                p.setMaLoaiSP(rs.getString("MaLoaiSP"));
//                p.setMaLoaiDT((rs.getString("MaSP")));
                p.setTenSP(rs.getString("TenSP"));
                p.setLinkAnh(rs.getString("LinkHinhAnh"));
                p.setMoTa(rs.getString("MoTaNgan"));
                p.setGia(rs.getDouble("Gia"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }

    @Override
    public List<ProductCL> searchByName(String txtSearch) {
        List<ProductCL> list = new ArrayList<>();

        try {
            String query = "SELECT * from (sanpham join  chitietsanpham on sanpham.MaSP=chitietsanpham.MaSP) WHERE TenSP LIKE ?";
            conn = DBConnect.getConnect();
            ps = conn.prepareStatement(query);
            ps.setString(1,"%"+txtSearch+"%");
            rs=ps.executeQuery();
            while (rs.next()){
                list.add(new ProductCL(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getDouble(7)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public List<ProductCL> relatedProducts(String maLoaiSP) {
        List<ProductCL> list = new ArrayList<>();
        String query = "SELECT sanpham.MaLoaiSP,sanpham.MaSP, sanpham.TenSP, chitietsanpham.LinkHinhAnh, chitietsanpham.Gia  FROM sanpham INNER JOIN chitietsanpham on sanpham.MaSP = chitietsanpham.MaSP where sanpham.MaLoaiSP  = ?";
        try {

            conn = DBConnect.getConnect();
            ps = conn.prepareStatement(query);
            ps.setString(1,maLoaiSP);
            rs=ps.executeQuery();
            while (rs.next()){
                ProductCL p = new ProductCL();
                p.setMaSP(rs.getString("MaSP"));
                p.setMaLoaiSP(rs.getString("MaLoaiSP"));
                p.setTenSP(rs.getString("TenSP"));
                p.setLinkAnh(rs.getString("LinkHinhAnh"));
                p.setGia(rs.getDouble("Gia"));

                list.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }
    @Override
    public String getNameType(String maLoaiSP) {
        try {
            String query = "SELECT * From loaisanpham where MaLoaiSP = ?";
            conn = DBConnect.getConnect();
            ps = conn.prepareStatement(query);
            ps.setString(1,maLoaiSP);
            rs=ps.executeQuery();

            while (rs.next()){
                ProductType pt= new ProductType();
                pt.setMaLoaiSP(rs.getString(1));
                pt.setTenLoaiSP(rs.getString(2));
                return pt.getTenLoaiSP();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public String getNameCategory(String maCategory) {
        try {
            String query = "SELECT * From category where MaCategory = ?";
            conn = DBConnect.getConnect();
            ps = conn.prepareStatement(query);
            ps.setString(1, maCategory);
            rs=ps.executeQuery();
            while (rs.next()){
                Category ca= new Category();
                ca.setId(rs.getInt(1));
                ca.setMaLoaiSP(rs.getString(2));
                ca.setMaCategory(rs.getString(3));
                ca.setTenCategory(rs.getString(4));
                return ca.getTenCategory();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int getTotalProductByType(String maLoaiSP) {
        try {
            String query = "SELECT count(*) From sanpham join chitietsanpham on sanpham.MaSP = chitietsanpham.MaSP Where  MaLoaiSP = ?";
            conn = DBConnect.getConnect();
            ps = conn.prepareStatement(query);
            ps.setString(1, maLoaiSP);
            rs=ps.executeQuery();
            while (rs.next()){
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public int getTotalProductBySubCategory(String maCategory) {
        try {
            String query = "SELECT count(*) from (loaisanpham join  category on loaisanpham.MaLoaiSP=category.MaLoaiSP)" +
                    " join sanpham on category.MaCategory = sanpham.MaLoaiSP " +
                    "join chitietsanpham on sanpham.MaSP = chitietsanpham.MaSP " +
                    "and category.MaCategory = ?";
            conn = DBConnect.getConnect();
            ps = conn.prepareStatement(query);
            ps.setString(1, maCategory);
            rs=ps.executeQuery();
            while (rs.next()){
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    @Override
    public List<ProductCL> pagingProduct(String maLoaiSP, int index) {
        List<ProductCL> list = new ArrayList<>();

        try {
            String query = "Select * from sanpham join chitietsanpham on sanpham.MaSP =chitietsanpham.MaSP WHERE MaLoaiSP= ? ORDER BY SanPham.MaSP LIMIT ?,12";
            conn = DBConnect.getConnect();
            ps = conn.prepareStatement(query);
            ps.setString(1,maLoaiSP);
            ps.setInt(2,(index-1)*12);
            rs=ps.executeQuery();
            while (rs.next()){
                list.add(new ProductCL(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getDouble(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }



    public static void main(String[] args) {
        ProductDao pd = new ProductDao();
        List<ProductCL> listP = pd.getAllProduct();
//        List<ProductType> listT = pd.getAllProductType();
        List<Category> listC = pd.getCategory();
//        List<ProductCL> list = pd.getProductBySubCategory("HFC");
        List<ProductCL> listSearch = pd.searchByName("cookie");
        String p = pd.getNameType("CUP");
        int c=pd.getTotalProductByType("DONUT");
        int a = pd.getTotalProductBySubCategory("FC");
        List<ProductCL> list = pd.pagingProduct("CUP",2);
        ProductCL sP = pd.getProductByMaSP("SP101");
//        for (ProductCL pcl : list){
//            System.out.println(pcl);
//        }
//        for (ProductType p : listT){
//            System.out.println(p);
//        }
//        for(Category c: listC){
//            System.out.println(c);
//        }
        System.out.println(sP);

    }
}
