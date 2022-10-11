package com.gdhsweetcakejavafinal.dao.client.impl;

import com.gdhsweetcakejavafinal.dao.client.Index;
import com.gdhsweetcakejavafinal.db.DBConnect;
import com.gdhsweetcakejavafinal.model.OrderDetails;
import com.gdhsweetcakejavafinal.model.client.Chef;
import com.gdhsweetcakejavafinal.model.client.Introduce;
import com.gdhsweetcakejavafinal.model.client.ProductCL;
import com.gdhsweetcakejavafinal.model.client.Slide;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class IndexDao implements Index {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    @Override
    public List<Slide> getListSlide() {
        conn = DBConnect.getConnect();
        String sql ="select * from slideshow";
        List<Slide> list = new ArrayList<Slide>();
        try{
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                Slide slide = new Slide();
                slide.setIdSlide(rs.getString("MaSlide"));
                slide.setImg(rs.getString("LinkHinhAnh"));
                slide.setContent(rs.getString("NoiDung"));
                list.add( slide);
            }
            ps.close();
            rs.close();
        }catch (SQLException ex){
            Logger.getLogger(IndexDao.class.getName()).log(Level.SEVERE,null,ex);
        }
        return list;
    }

    @Override
    public List<Chef> getListChef() {
        conn= DBConnect.getConnect();
        String sql ="select * from daubep";
        List<Chef> listChef = new ArrayList<Chef>();
        try{
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                Chef db = new Chef();
                db.setIdDB(rs.getString("MaDB"));
                db.setNameDB(rs.getString("TenDB"));
                db.setImg(rs.getString("LinkHinhAnh"));
                db.setPosition(rs.getString("ChucVu"));
                listChef.add(db);
            }
            ps.close();
            rs.close();
        }catch (SQLException ex){
            Logger.getLogger(IndexDao.class.getName()).log(Level.SEVERE,null,ex);
        }
        return listChef;
    }

    @Override
    public List<Introduce> getListIntroduce() {
        conn= DBConnect.getConnect();
        String sql ="select * from gioithieu";
        List<Introduce> listIntroduce = new ArrayList<Introduce>();
        try{
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                Introduce db = new Introduce();
                db.setId(rs.getString("MaGT"));
                db.setContent(rs.getString("Noidung"));
                listIntroduce.add(db);
            }
            ps.close();
            rs.close();
        }catch (SQLException ex){
            Logger.getLogger(IndexDao.class.getName()).log(Level.SEVERE,null,ex);
        }
        return listIntroduce;
    }
    public List<Introduce> getListIntroduceIndex() {
        conn = DBConnect.getConnect();
        String sql ="select * from gioithieu where MaGT ='GT02'";
        List<Introduce> listIntroduce = new ArrayList<Introduce>();
        try{
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                Introduce db = new Introduce();
                db.setId(rs.getString("MaGT"));
                db.setContent(rs.getString("Noidung"));
                listIntroduce.add(db);
            }
            ps.close();
            rs.close();
        }catch (SQLException ex){
            Logger.getLogger(IndexDao.class.getName()).log(Level.SEVERE,null,ex);
        }
        return listIntroduce;
    }

    @Override
    public List<OrderDetails> getListPSelling() {
        conn = DBConnect.getConnect();
        String sql ="SELECT * FROM chitietdonhang INNER JOIN chitietsanpham on chitietdonhang.MaSP= chitietsanpham.MaSP " +
                "INNER JOIN sanpham on chitietsanpham.MaSP= sanpham.MaSP WHERE chitietdonhang.SoLuong >= '3'  LIMIT 8";
        List<OrderDetails> listOrderDetail= new ArrayList<>();
        try {
            ps= conn.prepareStatement(sql);
//            ps.setString(1,maSP);
            rs= ps.executeQuery();
            while (rs.next()){
                OrderDetails od= new OrderDetails();
                ProductCL p= new ProductCL();
                od.setIdOrder(rs.getString("MaDH"));
                p.setMaSP(rs.getString("MaSP"));
                od.setQuantity(rs.getInt("SoLuong"));
                od.setNote(rs.getString("GhiChu"));
                p.setMaLoaiSP(rs.getString("MaLoaiSP"));
                p.setTenSP(rs.getString("TenSP"));
                p.setLinkAnh(rs.getString("LinkHinhAnh"));
                p.setGia(rs.getDouble("Gia"));
                od.setProductCL(p);
                listOrderDetail.add(od);
            }
            ps.close();
            rs.close();
        } catch (SQLException e) {
            Logger.getLogger(IndexDao.class.getName()).log(Level.SEVERE,null,e);
        }
        return listOrderDetail;
    }

}
