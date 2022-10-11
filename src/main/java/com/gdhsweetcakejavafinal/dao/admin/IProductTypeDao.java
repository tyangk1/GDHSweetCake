package com.gdhsweetcakejavafinal.dao.admin;

import com.gdhsweetcakejavafinal.model.Customer;
import com.gdhsweetcakejavafinal.model.ProductType;

import java.sql.SQLException;
import java.util.List;

public interface IProductTypeDao {
    List<ProductType> getListProduct() throws SQLException;
    boolean addPro(ProductType productType);
    public boolean delete(String id);
    public boolean updateTypeProduct(ProductType type);
    public ProductType getTypeProById(String id);
}
