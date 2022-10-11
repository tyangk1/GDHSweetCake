package com.gdhsweetcakejavafinal.model.client;

public class Comment {
    private String id;
    private String name;
    private String emai;
    private String comments;

    public Comment(String name, String emai, String comments) {
        this.name = name;
        this.emai = emai;
        this.comments = comments;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmai() {
        return emai;
    }

    public void setEmai(String emai) {
        this.emai = emai;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }
}
