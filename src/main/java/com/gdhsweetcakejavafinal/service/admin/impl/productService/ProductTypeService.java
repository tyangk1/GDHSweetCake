package com.gdhsweetcakejavafinal.service.admin.impl.productService;

import com.gdhsweetcakejavafinal.model.ProductType;
import com.gdhsweetcakejavafinal.dao.admin.impl.productDao.ProductTypeDao;
import com.gdhsweetcakejavafinal.service.admin.IProductTypeService;

import java.sql.SQLException;
import java.util.List;

public class ProductTypeService implements IProductTypeService {
    private static ProductTypeService typeService;
    private ProductTypeDao typeDao;

    public ProductTypeService() {
        this.typeDao = new ProductTypeDao();
    }


    public static ProductTypeService getInstance() {
        if (typeService == null) {
            typeService = new ProductTypeService();
        }
        return typeService;
    }

    public List<ProductType> getListProduct() throws SQLException {
        return typeDao.getListProduct();
    }

    @Override
    public boolean addProduct(ProductType productType) {
        return typeDao.addPro(productType);
    }



    @Override
    public boolean delete(String id) {

        return typeDao.delete(id);
    }

    @Override
    public boolean updateTypeProduct(ProductType type) {
        return typeDao.updateTypeProduct(type);
    }

    @Override
    public ProductType getTypeProById(String id) {
        return typeDao.getTypeProById(id);
    }
}
