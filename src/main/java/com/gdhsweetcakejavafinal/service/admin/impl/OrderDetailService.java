package com.gdhsweetcakejavafinal.service.admin.impl;

import com.gdhsweetcakejavafinal.dao.admin.impl.OrderDetailDao;
import com.gdhsweetcakejavafinal.model.Order;
import com.gdhsweetcakejavafinal.model.OrderDetails;
import com.gdhsweetcakejavafinal.service.admin.IOrderDetailService;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class OrderDetailService implements IOrderDetailService {
    private static OrderDetailService service;
    private OrderDetailDao orderDao;

    public OrderDetailService() {
        this.orderDao = new OrderDetailDao();
    }

    public static OrderDetailService getInstance() {
        if (service == null) {
            service = new OrderDetailService();
        }

        return service;
    }


    @Override
    public List<OrderDetails> getListOrderDetail(String idOrder) throws SQLException {
        return orderDao.getListOrderDetail(idOrder);
    }

    @Override
    public boolean addOrderDetail(OrderDetails orderDetails) {
        return orderDao.addOrderDetail(orderDetails);
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