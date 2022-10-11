package com.gdhsweetcakejavafinal.model.client;

public class Store {
    private String idStore;
    private String nameStore;
    private String img;
    private String content;

    public Store(){

    }
    public Store(String idStore, String nameStore, String img, String content) {
        this.idStore = idStore;
        this.nameStore = nameStore;
        this.img = img;
        this.content = content;
    }

    public String getIdStore() {
        return idStore;
    }

    public void setIdStore(String idStore) {
        this.idStore = idStore;
    }

    public String getNameStore() {
        return nameStore;
    }

    public void setNameStore(String nameStore) {
        this.nameStore = nameStore;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
