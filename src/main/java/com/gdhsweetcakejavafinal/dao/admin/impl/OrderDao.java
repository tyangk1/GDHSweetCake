package com.gdhsweetcakejavafinal.dao.admin.impl;

import com.gdhsweetcakejavafinal.dao.admin.IOrderDao;
import com.gdhsweetcakejavafinal.dao.client.impl.CartDao;
import com.gdhsweetcakejavafinal.db.DBConnect;
import com.gdhsweetcakejavafinal.model.Order;
import com.gdhsweetcakejavafinal.model.OrderDetails;
import com.gdhsweetcakejavafinal.model.Product;
import com.gdhsweetcakejavafinal.model.ProductDetails;
import com.gdhsweetcakejavafinal.service.admin.impl.OrderDetailService;
import com.gdhsweetcakejavafinal.tools.DateUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class OrderDao implements IOrderDao {
    @Override
    public List<Order> getListOrder() throws SQLException {
        List<Order> orderLists = new ArrayList<>();
        String sql = "Select * from donhang";
        Connection connection = DBConnect.getConnect();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet result = ps.executeQuery();
            while (result.next()) {
                Order order = new Order();
                order.setIdOrder(result.getString("MaDH"));
                order.setIdCus(result.getString("MaKH"));
                order.setOrderDate(result.getString("NgayDatHang"));
                order.setOrderDate(result.getString("NgayGiaoHang"));
                order.setDiscounted(result.getDouble("DaGiamGia"));
                order.setIntoMoney(result.getDouble("ThanhTien"));
                order.setOrderNotes(result.getString("GhiChuDH"));

                // get orderDetail
                List<OrderDetails> orderDetails = new ArrayList<>();
                String sql1 = "Select sp.MaSP,sp.TenSP, ct.SoLuong, ctsp.Gia from (chitietdonhang ct INNER JOIN sanpham sp on ct.MaSP=sp.MaSP) INNER JOIN chitietsanpham ctsp ON ctsp.MaSP= sp.MaSP where MaDH= ?";
                try {
                    PreparedStatement ps1 = connection.prepareStatement(sql1);
                    ps1.setString(1, order.getIdOrder());
                    ResultSet result1 = ps1.executeQuery();
                    while (result1.next()) {
                        OrderDetails details = new OrderDetails();
                        Product p = new Product();
                        ProductDetails pd = new ProductDetails();

                        details.setIdProduct(result1.getString("MaSP"));
                        p.setNamePro(result1.getString("TenSP"));
                        details.setQuantity(result1.getInt("SoLuong"));
                        pd.setPrice(result1.getDouble("Gia"));

                        p.setProductDetails(pd);
                        details.setProducts(p);
                        orderDetails.add(details);

                    }
                    result1.close();
                    ps1.close();
                    order.setOrderDetailsList(orderDetails);

                } catch (SQLException e) {
                    e.printStackTrace();
                }
                orderLists.add(order);

            }
            result.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderLists;
    }

    @Override
    public boolean addOrder(Order order) {
        new DBConnect();
        Connection conn = DBConnect.getConnect();
        String sql = "INSERT INTO donhang VALUES (?,?,?,?,?,?,?)";
        boolean check = false;
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, order.getIdOrder());
            ps.setString(2, order.getIdCus());
            ps.setDate(3, new Date(System.currentTimeMillis()));
            ps.setDate(4,new Date(System.currentTimeMillis()));
            ps.setDouble(5, order.getDiscounted());
            ps.setDouble(6, order.getIntoMoney());
            ps.setString(7, order.getOrderNotes());
            int row = ps.executeUpdate();
            check = row > 0 ? true : false;
            for (OrderDetails orderDetail : order.getOrderDetailsList()
            ) {
                OrderDetailService.getInstance().addOrderDetail(orderDetail);

            }

            conn.close();
        } catch (SQLException e) {
            Logger.getLogger(OrderDao.class.getName()).log(Level.SEVERE, null, e);

        }
        return check;
    }


    @Override
    public boolean getTheLatestInvoice() {
        return false;
    }

    @Override
    public List<Order> getListOrder(Date dateMin, Date dateMax) {
        return null;
    }


}