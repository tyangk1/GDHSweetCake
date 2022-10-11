package com.gdhsweetcakejavafinal.dao.client;

import com.gdhsweetcakejavafinal.model.client.Comment;
import com.gdhsweetcakejavafinal.model.client.StoreBranch;

import java.util.List;

public interface IContact {
    public List<StoreBranch> getListStoreBranch();
    boolean addComment(Comment comments);
}
