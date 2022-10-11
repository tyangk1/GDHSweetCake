package com.gdhsweetcakejavafinal.model.client;

public class Slide {
    private String idSlide;
    private String img;
    private String content;

    public Slide(){

    }

    public Slide(String idSlide, String img, String content) {
        this.idSlide = idSlide;
        this.img = img;
        this.content = content;
    }

    public String getIdSlide() {
        return idSlide;
    }

    public void setIdSlide(String idSlide) {
        this.idSlide = idSlide;
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
