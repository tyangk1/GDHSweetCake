package com.gdhsweetcakejavafinal.dao.admin;

import com.gdhsweetcakejavafinal.model.Customer;

import java.sql.SQLException;
import java.util.List;

public interface ICustomerDao {
    List<Customer> getListCus() throws SQLException;
    boolean addCus(Customer customer);
    public boolean delete(String id);
    List<Customer> searchByName(String customerName);
    public boolean updateCustomer(Customer customer);
    public Customer getCustomerById(String id);
}
