package com.gdhsweetcakejavafinal.model.client;

public class ProductCL{
    private String maSP;
    private String maLoaiSP;
    private String tenSP;
    private String maLoaiDT;
//    private String tenLoaiSP;
    private String linkAnh;
    private String moTa;
    private double gia;

    public ProductCL(String maSP, String maLoaiSP, String tenSP, String maLoaiDT, String linkAnh, String moTa, double gia) {
        this.maSP = maSP;
        this.maLoaiSP = maLoaiSP;
        this.maLoaiDT = maLoaiDT;
        this.tenSP = tenSP;
        this.linkAnh = linkAnh;
        this.moTa = moTa;
        this.gia = gia;
    }
    public ProductCL(){};

    public String getMaSP() {
        return maSP;
    }

    public void setMaSP(String maSP) {
        this.maSP = maSP;
    }

    public String getMaLoaiSP() {
        return maLoaiSP;
    }

    public void setMaLoaiSP(String maLoaiSP) {
        this.maLoaiSP = maLoaiSP;
    }

    public String getTenSP() {
        return tenSP;
    }

    public void setTenSP(String tenSP) {
        this.tenSP = tenSP;
    }

    public String getMaLoaiDT() {
        return maLoaiDT;
    }

    public void setMaLoaiDT(String maLoaiDT) {
        this.maLoaiDT = maLoaiDT;
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
        return "ProductCL{" +
                "maSP='" + maSP + '\'' +
                ", maLoaiSP='" + maLoaiSP + '\'' +
                ", maLoaiDT='" + maLoaiDT + '\'' +
                ", tenSP='" + tenSP + '\'' +
                ", linkAnh='" + linkAnh + '\'' +
                ", moTa='" + moTa + '\'' +
                ", gia=" + gia +
                '}';
    }

//    @Override
//    public int compareTo(ProductCL p) {
//        return Integer.parseInt(this.maSP) - Integer.parseInt(p.maSP);
//    }
}

//package com.gdhsweetcakejavafinal.model.client;
//
//import java.util.List;
//
//public class ProductCL {
//    private String maSP;
//    private String maLoaiSP;
//    private String tenSP;
//    //    private String linkImg;
//    private ProductCLDetails productCLDetails;
//
//    public ProductCL() {
//    }
//
//    public ProductCL(String maSP, String maLoaiSP, String tenSP,ProductCLDetails productCLDetails) {
//        this.maSP = maSP;
//        this.maLoaiSP = maLoaiSP;
//        this.tenSP = tenSP;
////        this.linkImg = linkImg;
//        this.productCLDetails=productCLDetails;
//    }
//
////    public String getLinkImg() {
////        return linkImg;
////    }
////
////    public void setLinkImg(String linkImg) {
////        this.linkImg = linkImg;
////    }
//
//    public ProductCLDetails getProductDetails() {
//        return productCLDetails;
//    }
//
//    public void setProductDetails(ProductCLDetails productCLDetails) {
//        this.productCLDetails = productCLDetails;
//    }
//
//    public String getMaSP() {
//        return maSP;
//    }
//
//    public void setMaSP(String maSP) {
//        this.maSP = maSP;
//    }
//
//    public String getMaLoaiSP() {
//        return maLoaiSP;
//    }
//
//    public void setMaLoaiSP(String maLoaiSP) {
//        this.maLoaiSP = maLoaiSP;
//    }
//
//    public String getTenSP() {
//        return tenSP;
//    }
//
//    public void setTenSP(String tenSP) {
//        this.tenSP = tenSP;
//    }
//
//    @Override
//    public String toString() {
//        return "ProductCL{" +
//                "maSP='" + maSP + '\'' +
//                ", maLoaiSP='" + maLoaiSP + '\'' +
//                ", tenSP='" + tenSP + '\'' +
//                ", productCLDetails=" + productCLDetails +
//                '}';
//    }
//}


