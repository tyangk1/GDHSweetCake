package com.gdhsweetcakejavafinal.model.client;

public class Introduce {
    private String id;
    private String content;

    public Introduce(String id, String content) {
        this.id = id;
        this.content = content;
    }
    public  Introduce(){

    }

    public String getId() {return id;}

    public void setId(String id) { this.id = id;}

    public String getContent() {return content;}

    public void setContent(String content) {this.content = content;}
}
