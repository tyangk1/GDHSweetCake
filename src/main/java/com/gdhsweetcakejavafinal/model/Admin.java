package com.gdhsweetcakejavafinal.model;

public class Admin {
    private String id;
    private String nameAccount; // tên tài khoản ng dùng
    private String username;// tên ng dùng
    private String email;
    private String img;
    private String password;
    private String permission; // quyền hạn

    public Admin() {
    }

    public Admin(String id, String nameAccount, String username, String email, String img, String password, String permission) {
        this.id = id;
        this.nameAccount = nameAccount;
        this.username = username;
        this.email = email;
        this.img = img;
        this.password = password;
        this.permission = permission;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNameAccount() {
        return nameAccount;
    }

    public void setNameAccount(String nameAccount) {
        this.nameAccount = nameAccount;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String pass) {
        this.password = password;
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id='" + id + '\'' +
                ", nameAccount='" + nameAccount + '\'' +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", img='" + img + '\'' +
                ", password='" + password + '\'' +
                ", permission='" + permission + '\'' +
                '}';
    }
}

