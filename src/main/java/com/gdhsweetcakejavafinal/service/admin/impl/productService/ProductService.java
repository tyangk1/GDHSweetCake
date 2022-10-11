package com.gdhsweetcakejavafinal.service.admin.impl.productService;

import com.gdhsweetcakejavafinal.dao.admin.impl.productDao.ProductDao;
import com.gdhsweetcakejavafinal.model.Product;
import com.gdhsweetcakejavafinal.model.ProductDetails;
import com.gdhsweetcakejavafinal.service.admin.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    private static ProductService productCUPService;
    private ProductDao dao;

    public ProductService() {
        this.dao = new ProductDao();
    }


    public static ProductService getInstance() {
        if(productCUPService==null){
            productCUPService= new ProductService();
        }

        return productCUPService;
    }

    @Override
    public List<Product> getListProduct(String maLoai1) {
        return dao.getListProduct(maLoai1);
    }

    @Override
    public List<Product> getListProduct(String maLoai1, String maLoai2) {
        return dao.getListProduct(maLoai1, maLoai2);
    }

    @Override
    public List<Product> getListProduct(String maLoai1, String maLoai2, String maLoai3) {
        return dao.getListProduct(maLoai1, maLoai2, maLoai3);
    }

    @Override
    public boolean addProduct(Product product, ProductDetails details){
        return dao.addProduct(product,details);
    }

    @Override
    public boolean delete(String id) {
        return dao.delete(id);
    }

    @Override
    public boolean updateProduct(Product product) {
        return dao.updateProduct(product);
    }

    @Override
    public Product getProductById(String id) {
        return dao.getProductById(id);
    }
}
