package com.gdhsweetcakejavafinal.model;

import java.util.List;

public class Product {
    private String idPro;
    private String idProType;
    private String namePro;
//    private String linkImg;
    private ProductDetails productDetails;

    public Product() {
    }

    public Product(String idPro, String idProType, String namePro,ProductDetails productDetails) {
        this.idPro = idPro;
        this.idProType = idProType;
        this.namePro = namePro;
//        this.linkImg = linkImg;
        this.productDetails=productDetails;
    }

//    public String getLinkImg() {
//        return linkImg;
//    }
//
//    public void setLinkImg(String linkImg) {
//        this.linkImg = linkImg;
//    }


    @Override
    public String toString() {
        return "Product{" +
                "idPro='" + idPro + '\'' +
                ", idProType='" + idProType + '\'' +
                ", namePro='" + namePro + '\'' +
                ", productDetails=" + productDetails +
                '}';
    }

    public ProductDetails getProductDetails() {
        return productDetails;
    }

    public void setProductDetails(ProductDetails productDetails) {
        this.productDetails = productDetails;
    }

    public String getIdPro() {
        return idPro;
    }

    public void setIdPro(String idPro) {
        this.idPro = idPro;
    }

    public String getIdProType() {
        return idProType;
    }

    public void setIdProType(String idProType) {
        this.idProType = idProType;
    }

    public String getNamePro() {
        return namePro;
    }

    public void setNamePro(String namePro) {
        this.namePro = namePro;
    }
}
