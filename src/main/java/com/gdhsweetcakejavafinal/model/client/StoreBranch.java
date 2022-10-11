package com.gdhsweetcakejavafinal.model.client;

public class StoreBranch {
    private String idStoreBranch;
    private String districtName;
    private String address;
    private String SDT;
    private String Email;

    public StoreBranch() {

    }

    public StoreBranch(String idStoreBranch, String districtName, String address, String SDT, String email) {
        this.idStoreBranch = idStoreBranch;
        this.districtName = districtName;
        this.address = address;
        this.SDT = SDT;
        Email = email;
    }

    public String getIdStoreBranch() {
        return idStoreBranch;
    }

    public void setIdStoreBranch(String idStoreBranch) {
        this.idStoreBranch = idStoreBranch;
    }

    public String getDistrictName() {
        return districtName;
    }

    public void setDistrictName(String districtName) {
        this.districtName = districtName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSDT() {
        return SDT;
    }

    public void setSDT(String SDT) {
        this.SDT = SDT;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    @Override
    public String toString() {
        return "StoreBranch{" +
                "idStoreBranch='" + idStoreBranch + '\'' +
                ", districtName='" + districtName + '\'' +
                ", address='" + address + '\'' +
                ", SDT='" + SDT + '\'' +
                ", Email='" + Email + '\'' +
                '}';
    }
}