package com.gdhsweetcakejavafinal.dao.admin.impl;

import com.gdhsweetcakejavafinal.dao.admin.IOrderDetailDao;
import com.gdhsweetcakejavafinal.dao.client.impl.CartDao;
import com.gdhsweetcakejavafinal.db.DBConnect;
import com.gdhsweetcakejavafinal.model.OrderDetails;
import com.gdhsweetcakejavafinal.model.Product;
import com.gdhsweetcakejavafinal.model.ProductDetails;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class OrderDetailDao implements IOrderDetailDao {


    @Override
    public List<OrderDetails> getListOrderDetail(String idOrder) throws SQLException {
        List<OrderDetails> orderDetails = new ArrayList<>();
        String sql = "Select sp.MaSP,sp.TenSP, ct.SoLuong, ctsp.Gia from (chitietdonhang ct INNER JOIN sanpham sp on ct.MaSP=sp.MaSP) INNER JOIN chitietsanpham ctsp ON ctsp.MaSP= sp.MaSP where MaDH= ?";
        Connection connection = DBConnect.getConnect();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, idOrder);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                OrderDetails od = new OrderDetails();
                Product p = new Product();
                ProductDetails details = new ProductDetails();
                od.setIdProduct(rs.getString("MaSP"));
                p.setNamePro(rs.getString("TenSP"));
                od.setQuantity(rs.getInt("SoLuong"));
//                od.setUnitPrice(rs.getDouble("DonGia"));
                details.setPrice(rs.getDouble("Gia"));


                p.setProductDetails(details);
                od.setProducts(p);
                orderDetails.add(od);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderDetails;
    }

    @Override
    public boolean addOrderDetail(OrderDetails orderDetails) {
        new DBConnect();
        Connection conn = DBConnect.getConnect();
        String sql = "INSERT INTO chitietdonhang VALUES (?,?,?,?)";
        boolean check = false;
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, orderDetails.getIdOrder());
            ps.setString(2, orderDetails.getIdProduct());
            ps.setInt(3, orderDetails.getQuantity());
            ps.setString(4, orderDetails.getNote());

            int row = ps.executeUpdate();
            check = row > 0 ? true : false;
            conn.close();
        } catch (SQLException e) {
            Logger.getLogger(OrderDetailDao.class.getName()).log(Level.SEVERE, null, e);

        }
        return check;
    }


    @Override
    public boolean getTheLatestInvoice() {
        return false;
    }

    @Override
    public List<OrderDetails> getListOrder(Date dateMin, Date dateMax) {
        return null;
    }
}
