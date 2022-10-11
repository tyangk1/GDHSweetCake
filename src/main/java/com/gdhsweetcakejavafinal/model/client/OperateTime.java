package com.gdhsweetcakejavafinal.model.client;

public class OperateTime {
    private String idTime;
    private String content;

    public OperateTime(){

    }

    public OperateTime(String idTime, String content) {
        this.idTime = idTime;
        this.content = content;
    }

    public String getIdTime() {
        return idTime;
    }

    public void setIdTime(String idTime) {
        this.idTime = idTime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
