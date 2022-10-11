package com.gdhsweetcakejavafinal.service.admin;

import com.gdhsweetcakejavafinal.model.Order;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public interface IOrderService {
    List<Order> getListOrder() throws SQLException;
    boolean addOrder(Order order);
    boolean getTheLatestInvoice();
    List<Order> getListOrder(Date dateMin, Date dateMax);
}
