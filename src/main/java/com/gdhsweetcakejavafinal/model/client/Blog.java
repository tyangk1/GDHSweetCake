package com.gdhsweetcakejavafinal.model.client;

public class Blog {
    private String id;
    private String content;

    public Blog() {
        this.id = id;
        this.content = content;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "id='" + id + '\'' +
                ", content='" + content + '\'' +
                '}';
    }
}
