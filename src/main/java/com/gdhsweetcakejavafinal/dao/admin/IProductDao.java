package com.gdhsweetcakejavafinal.dao.admin;


import com.gdhsweetcakejavafinal.model.Product;
import com.gdhsweetcakejavafinal.model.ProductDetails;
import com.gdhsweetcakejavafinal.model.ProductType;

import java.sql.SQLException;
import java.util.List;

public interface IProductDao {
    List<Product> getListProduct(String maLoai1);
    List<Product> getListProduct(String maLoai1, String maLoai2);
    List<Product> getListProduct(String maLoai1, String maLoai2, String maLoai3);
    boolean addProduct(Product product, ProductDetails details);
    public boolean delete(String id);
    public boolean updateProduct(Product product);
    public Product getProductById(String id);
}
