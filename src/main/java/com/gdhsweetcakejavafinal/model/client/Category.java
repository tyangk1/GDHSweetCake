package com.gdhsweetcakejavafinal.model.client;

public class Category {
    private int id;
    private String maLoaiSP;
    private String maCategory;
    private String tenCategory;

    public Category(int id, String maLoaiSP, String maCategory, String tenCategory) {
        this.id = id;
        this.maLoaiSP = maLoaiSP;
        this.maCategory = maCategory;
        this.tenCategory = tenCategory;
    }

    public Category(){
    }

    public String getMaCategory() {
        return maCategory;
    }

    public void setMaCategory(String maCategory) {
        this.maCategory = maCategory;
    }

    public int getId() {
        return id;
    }

    public String getMaLoaiSP() {
        return maLoaiSP;
    }

    public String getTenCategory() {
        return tenCategory;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setMaLoaiSP(String maLoaiSP) {
        this.maLoaiSP = maLoaiSP;
    }

    public void setTenCategory(String tenCategory) {
        this.tenCategory = tenCategory;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", maLoaiSP='" + maLoaiSP + '\'' +
                ", maCategory='" + maCategory + '\'' +
                ", tenCategory='" + tenCategory + '\'' +
                '}';
    }
}
