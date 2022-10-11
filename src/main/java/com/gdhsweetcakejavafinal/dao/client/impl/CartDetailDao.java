package com.gdhsweetcakejavafinal.dao.client.impl;

import com.gdhsweetcakejavafinal.dao.client.ICartDetail;
import com.gdhsweetcakejavafinal.db.DBConnect;
import com.gdhsweetcakejavafinal.model.client.CartDetail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CartDetailDao implements ICartDetail {
    @Override
    public boolean insert(CartDetail cartDetail) {
        new DBConnect();
        Connection conn = DBConnect.getConnect();
        String sql = "INSERT INTO chitietgiohang VALUES (?,?,?,?,?)";
        boolean check = false;
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, cartDetail.getCartId());
            ps.setString(2, cartDetail.getMaSP());
            ps.setInt(3, cartDetail.getQuantity());
            ps.setDouble(4, cartDetail.getPrice());
            ps.setString(5, cartDetail.getNoteSP());

            int row = ps.executeUpdate();
            check = row > 0 ? true : false;
            conn.close();
        } catch (SQLException e) {
            Logger.getLogger(CartDao.class.getName()).log(Level.SEVERE, null, e);

        }
        return check;
    }

    @Override
    public boolean update(CartDetail cartDetail) {
        if (cartDetail != null) {
            Connection conn = DBConnect.getConnect();
            String sql = "update chitietgiohang  set " +
                    "maSP = ? ," +
                    "maGH = ? ," +
                    "SoLuong = ? ," +
                    "DonGia = ? ,GhiChuSP=? where maGH=?  and maSP=?";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1, cartDetail.getMaSP());
                ps.setString(2, cartDetail.getCartId());
                ps.setInt(3, cartDetail.getQuantity());
                ps.setDouble(4, cartDetail.getPrice());
                ps.setString(5, cartDetail.getNoteSP());
                ps.setString(6, cartDetail.getCartId());
                ps.setString(7, cartDetail.getMaSP());

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
    public boolean delete(String id) {
        PreparedStatement ps = null;
        try {
            Connection conn = DBConnect.getConnect();
            String sql = "delete from chitietgiohang where maGH = ?";
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
    public CartDetail getById(String id) {
        Connection connection = DBConnect.getConnect();
        String sql = "SELECT * FROM chitietgiohang WHERE maGH = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                CartDetail cart = new CartDetail();
                cart.setCartId(rs.getString("maGH"));
                cart.setMaSP(rs.getString("maSP"));
                cart.setQuantity(rs.getInt("SoLuong"));
                cart.setPrice(rs.getDouble("DonGia"));
                cart.setNoteSP(rs.getString("GhiChuSP"));

                ps.close();
                rs.close();
                return cart;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<CartDetail> getByIdCart(String idCart) {
        List<CartDetail> cartDetails = new ArrayList<>();
        String sql = "SELECT * FROM chitietgiohang where maGH=?";
        Connection conn = DBConnect.getConnect();

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, idCart);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                CartDetail cartDetail = new CartDetail();

                cartDetail.setMaSP(rs.getString("MaSP"));
                cartDetail.setCartId(rs.getString("MaGH"));
                cartDetail.setQuantity(rs.getInt("SoLuong"));
                cartDetail.setPrice(rs.getDouble("DonGia"));
                cartDetail.setNoteSP(rs.getString("GhiChuSP"));
                cartDetails.add(cartDetail);
            }

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return cartDetails;
    }

    @Override
    public List<CartDetail> getAll() {
        return null;
    }

    @Override
    public List<CartDetail> getCartForImg(String idCustomer) {
        List<CartDetail> cartDetails = new ArrayList<>();
        String sql = "SELECT * FROM chitietgiohang c join giohang g on c.maGH= g.maGH  where g.maKH=?";
        Connection conn = DBConnect.getConnect();

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, idCustomer);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                CartDetail cartDetail = new CartDetail();
                cartDetail.setMaSP(rs.getString("MaSP"));
                cartDetail.setCartId(rs.getString("MaGH"));
                cartDetail.setQuantity(rs.getInt("SoLuong"));
                cartDetail.setPrice(rs.getDouble("DonGia"));
                cartDetail.setNoteSP(rs.getString("GhiChuSP"));
                cartDetails.add(cartDetail);
            }

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return cartDetails;
    }

    @Override
    public double sumPriceCart(String idCustomer) {
        List<CartDetail> cartDetailList = getCartForImg(idCustomer);
        double sum = 0;
        for (CartDetail cartDetail :
                cartDetailList) {
            sum += cartDetail.getQuantity() * cartDetail.getPrice();

        }
        return sum;
    }

    @Override
    public CartDetail getCartDetailBySP(String idSp, String idCart) {
        Connection connection = DBConnect.getConnect();
        String sql = "SELECT * FROM chitietgiohang WHERE maSP=? and maGH = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, idSp);
            ps.setString(2, idCart);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                CartDetail cart = new CartDetail();
                cart.setCartId(rs.getString("maGH"));
                cart.setMaSP(rs.getString("maSP"));
                cart.setQuantity(rs.getInt("SoLuong"));
                cart.setPrice(rs.getDouble("DonGia"));
                cart.setNoteSP(rs.getString("GhiChuSP"));

                ps.close();
                rs.close();
                return cart;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public boolean deleteByMaSP(String maGH, String maSP) {
        PreparedStatement ps = null;
        try {
            Connection conn = DBConnect.getConnect();
            String sql = "delete from chitietgiohang where maGH = ? and maSP=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, maGH);
            ps.setString(2, maSP);

            int i = ps.executeUpdate();

            return i == 1;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void main(String[] args) {

    }
}
