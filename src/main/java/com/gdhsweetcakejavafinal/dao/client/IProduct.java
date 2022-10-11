package com.gdhsweetcakejavafinal.dao.client;

import com.gdhsweetcakejavafinal.model.Product;
import com.gdhsweetcakejavafinal.model.client.Category;
import com.gdhsweetcakejavafinal.model.client.ProductCL;
import com.gdhsweetcakejavafinal.model.client.ProductType;

import java.util.List;

public interface IProduct {
    List<ProductCL> getAllProduct();

    List<ProductType> getAllProductType();

    List<Category> getCategory();

    List<ProductCL> getProductByType(String maLoaiSP);

    List<ProductCL> getProductBySubCategory(String maCategory);

    ProductCL getProductByMaSP(String maSP);

    List<ProductCL> searchByName(String txtSearch);

    List <ProductCL> relatedProducts (String maLoaiSP);

    String getNameType(String maLoai);

    String getNameCategory(String maCategory);



    //pagination
    int getTotalProductByType(String maLoaiSP);
    int getTotalProductBySubCategory(String maCategory);

    List<ProductCL> pagingProduct (String maLoaiSP, int index);


}
