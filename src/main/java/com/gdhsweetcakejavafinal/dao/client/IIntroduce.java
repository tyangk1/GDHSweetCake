package com.gdhsweetcakejavafinal.dao.client;


import com.gdhsweetcakejavafinal.model.client.Chef;
import com.gdhsweetcakejavafinal.model.client.Introduce;

import java.util.List;

public interface IIntroduce {
    public List<Introduce> getListIntroduce();
    public List<Chef> getListChef();

}
