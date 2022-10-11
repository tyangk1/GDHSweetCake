package com.gdhsweetcakejavafinal.dao.client;

import com.gdhsweetcakejavafinal.model.client.Cart;

import java.util.List;

public interface ICart {
    boolean insert(Cart cart);

    boolean update(Cart cart);

    boolean delete(String id);

    Cart  getById(String id);

    Cart getCartByCustomerId(String customerId);


    List<Cart> getAll();




}
