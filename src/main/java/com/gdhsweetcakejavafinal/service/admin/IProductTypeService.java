package com.gdhsweetcakejavafinal.service.admin;

import com.gdhsweetcakejavafinal.model.ProductType;

import java.sql.SQLException;
import java.util.List;

public interface IProductTypeService {
    List<ProductType> getListProduct() throws SQLException;
    boolean addProduct(ProductType productType);
    public boolean delete(String id);
    public boolean updateTypeProduct(ProductType type);
    public ProductType getTypeProById(String id);
}
