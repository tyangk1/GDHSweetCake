package com.gdhsweetcakejavafinal.dao.client;

import com.gdhsweetcakejavafinal.model.client.OperateTime;
import com.gdhsweetcakejavafinal.model.client.Store;

import java.util.List;

public interface IFooter {
    public List<OperateTime> getListTime();
    public List<Store> getListStore();
}
