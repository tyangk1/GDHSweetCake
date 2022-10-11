package com.gdhsweetcakejavafinal.model.client;

public class Chef {
    private String idDB;
    private String NameDB;
    private String img;
    private String position;

    public Chef(){

    }

    public Chef(String idDB, String nameDB, String img, String position) {
        this.idDB = idDB;
        NameDB = nameDB;
        this.img = img;
        this.position = position;
    }

    public String getIdDB() {
        return idDB;
    }

    public void setIdDB(String idDB) {
        this.idDB = idDB;
    }

    public String getNameDB() {
        return NameDB;
    }

    public void setNameDB(String nameDB) {
        NameDB = nameDB;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }
}
