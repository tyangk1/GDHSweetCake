package com.gdhsweetcakejavafinal.service.admin;

import com.gdhsweetcakejavafinal.model.Customer;

import java.sql.SQLException;
import java.util.List;

public interface ICustomerService {
    List<Customer> getListCus() throws SQLException;
    boolean addCus(Customer customer);
    boolean delete(String id);
    List<Customer> searchByName(String customerName);
    public boolean updateCustomer(Customer customer);
    public Customer getCustomerById(String id);
}
