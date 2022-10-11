package com.gdhsweetcakejavafinal.model;

public class ProductDetails {
    private String idPro;
    private String linkImg;
    private String describe;// mô tả
    private double price;

    public ProductDetails() {
    }

    public ProductDetails(String idPro, String linkImg, String describe, double price) {
        this.idPro = idPro;
        this.linkImg = linkImg;
        this.describe = describe;
        this.price = price;
    }

    public String getIdPro() {
        return idPro;
    }

    public void setIdPro(String idPro) {
        this.idPro = idPro;
    }

    public String getLinkImg() {
        return linkImg;
    }

    public void setLinkImg(String linkImg) {
        this.linkImg = linkImg;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
