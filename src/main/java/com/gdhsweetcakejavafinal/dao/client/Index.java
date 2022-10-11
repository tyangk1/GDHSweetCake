package com.gdhsweetcakejavafinal.dao.client;

import com.gdhsweetcakejavafinal.model.OrderDetails;
import com.gdhsweetcakejavafinal.model.client.Chef;
import com.gdhsweetcakejavafinal.model.client.Introduce;
import com.gdhsweetcakejavafinal.model.client.Slide;

import java.util.List;

public interface Index {
    public List<Slide> getListSlide();
    public List<Chef> getListChef();
    public List<Introduce> getListIntroduce();
    public List<Introduce> getListIntroduceIndex();
    public List<OrderDetails> getListPSelling();
}
