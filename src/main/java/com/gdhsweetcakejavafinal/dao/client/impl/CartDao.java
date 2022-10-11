package com.gdhsweetcakejavafinal.dao.client.impl;

import com.gdhsweetcakejavafinal.dao.client.ICart;
import com.gdhsweetcakejavafinal.db.DBConnect;
import com.gdhsweetcakejavafinal.model.Customer;
import com.gdhsweetcakejavafinal.model.client.Cart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CartDao implements ICart {
    @Override
    public boolean insert(Cart cart) {
        new DBConnect();
        Connection conn = DBConnect.getConnect();
        String sql = "INSERT INTO giohang VALUES (?,?)";
        boolean check = false;
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, cart.getCartId());
            ps.setString(2, cart.getCustomerId());

            int row = ps.executeUpdate();
            check = row > 0 ? true : false;
            conn.close();
        } catch (SQLException e) {
            Logger.getLogger(CartDao.class.getName()).log(Level.SEVERE, null, e);

        }
        return check;
    }

    @Override
    public boolean update(Cart cart) {
        if (cart!= null) {
            Connection conn = DBConnect.getConnect();
            String sql = "update giohang  set " +
                    "maGH = ? ," +
                    "maKH = ? "
                  ;

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
//
                ps.setString(1, cart.getCartId());
                ps.setString(2, cart.getCustomerId());

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
            String sql = "delete from giohang where maGH = ?";
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
    public Cart getById(String id) {
        Connection connection = DBConnect.getConnect();
        String sql = "SELECT * FROM giohang WHERE maGH = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Cart cart = new Cart();
                cart.setCartId(rs.getString("maGH"));
                cart.setCustomerId(rs.getString("maKH"));
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
    public Cart getCartByCustomerId(String customerId) {
        Connection connection = DBConnect.getConnect();
        String sql = "SELECT * FROM giohang WHERE maKH = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,customerId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Cart cart = new Cart();
                cart.setCartId(rs.getString("maGH"));
                cart.setCustomerId(rs.getString("maKH"));
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
    public List<Cart> getAll() {
        return null;
    }




}
