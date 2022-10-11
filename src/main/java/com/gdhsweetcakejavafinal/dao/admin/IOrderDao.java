package com.gdhsweetcakejavafinal.dao.admin;

import com.gdhsweetcakejavafinal.model.Order;

import java.sql.SQLException;
import java.sql.Date;
import java.util.List;

public interface IOrderDao {
    List<Order> getListOrder() throws SQLException;
    boolean addOrder(Order order);
    boolean getTheLatestInvoice();
    List<Order> getListOrder(Date dateMin, Date dateMax);
}
