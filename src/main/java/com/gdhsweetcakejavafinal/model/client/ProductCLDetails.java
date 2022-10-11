package com.gdhsweetcakejavafinal.model.client;

public class ProductCLDetails {
    private String maSP;
    private String linkAnh;
    private String moTa;// mô tả
    private double gia;

    public ProductCLDetails(String maSP, String linkAnh, String moTa, double gia) {
        this.maSP = maSP;
        this.linkAnh = linkAnh;
        this.moTa = moTa;
        this.gia = gia;
    }
    public ProductCLDetails(){}

    public String getMaSP() {
        return maSP;
    }

    public void setMaSP(String maSP) {
        this.maSP = maSP;
    }

    public String getLinkAnh() {
        return linkAnh;
    }

    public void setLinkAnh(String linkAnh) {
        this.linkAnh = linkAnh;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public double getGia() {
        return gia;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }

    @Override
    public String toString() {
        return "ProductCLDetails{" +
                "maSP='" + maSP + '\'' +
                ", linkAnh='" + linkAnh + '\'' +
                ", moTa='" + moTa + '\'' +
                ", gia=" + gia +
                '}';
    }
}
