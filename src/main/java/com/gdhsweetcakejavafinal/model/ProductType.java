package com.gdhsweetcakejavafinal.model;

public class ProductType {
    private String idTypePro;
    private String nameTypePro;

    public ProductType() {
    }

    public ProductType(String idTypePro, String nameTypePro) {
        this.idTypePro = idTypePro;
        this.nameTypePro = nameTypePro;
    }

    public String getIdTypePro() {
        return idTypePro;
    }

    public void setIdTypePro(String idTypePro) {
        this.idTypePro = idTypePro;
    }

    public String getNameTypePro() {
        return nameTypePro;
    }

    public void setNameTypePro(String nameTypePro) {
        this.nameTypePro = nameTypePro;
    }

    @Override
    public String toString() {
        return "ProductType{" +
                "idTypePro='" + idTypePro + '\'' +
                ", nameTypePro='" + nameTypePro + '\'' +
                '}';
    }
}
