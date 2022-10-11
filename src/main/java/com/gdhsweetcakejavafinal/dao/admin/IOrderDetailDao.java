package com.gdhsweetcakejavafinal.dao.admin;


import com.gdhsweetcakejavafinal.model.OrderDetails;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public interface IOrderDetailDao {
    List<OrderDetails> getListOrderDetail(String idOrder) throws SQLException;
    boolean addOrderDetail(OrderDetails orderDetails);
    boolean getTheLatestInvoice();
    List<OrderDetails> getListOrder(Date dateMin, Date dateMax);
}
