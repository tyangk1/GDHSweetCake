package com.gdhsweetcakejavafinal.model;

public class Customer {
    private String idCus;
    private String nameCus;
    private String emailCus;
//    private String birthday;
    private String gender;
    private String password;
    private String numPhone;
    private String address;

    public Customer(String idCus, String nameCus, String emailCus, String gender, String password, String numPhone, String address) {
        this.idCus = idCus;
        this.nameCus = nameCus;
        this.emailCus = emailCus;
//        this.birthday = birthday;
        this.gender = gender;
        this.password = password;
        this.numPhone = numPhone;
        this.address = address;
    }

    public Customer() {
    }

    public String getIdCus() {
        return idCus;
    }

    public void setIdCus(String idCus) {
        this.idCus = idCus;
    }

    public String getNameCus() {
        return nameCus;
    }

    public void setNameCus(String nameCus) {
        this.nameCus = nameCus;
    }

    public String getEmailCus() {
        return emailCus;
    }

    public void setEmailCus(String emailCus) {
        this.emailCus = emailCus;
    }
//
//    public String getBirthday() {
//        return birthday;
//    }
//
//    public void setBirthday(String birthday) {
//        this.birthday = birthday;
//    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNumPhone() {
        return numPhone;
    }

    public void setNumPhone(String numPhone) {
        this.numPhone = numPhone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "idCus='" + idCus + '\'' +
                ", nameCus='" + nameCus + '\'' +
                ", emailCus='" + emailCus + '\'' +
//                ", birthday='" + birthday + '\'' +
                ", gender='" + gender + '\'' +
                ", password='" + password + '\'' +
                ", numPhone='" + numPhone + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
