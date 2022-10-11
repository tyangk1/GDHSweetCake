package com.gdhsweetcakejavafinal.service.client.impl;

import com.gdhsweetcakejavafinal.dao.client.impl.CartDao;
import com.gdhsweetcakejavafinal.model.client.Cart;
import com.gdhsweetcakejavafinal.service.client.ICartServices;

import java.util.List;

public class CartServices implements ICartServices {
    private static CartServices cartServices;
    private CartDao cartDao;

    private CartServices() {
        cartDao = new CartDao();
    }

    public static CartServices getInstance() {
        if (cartServices == null) {
            cartServices = new CartServices();
        }
        return cartServices;
    }

    @Override
    public boolean insert(Cart cart) {
        return cartDao.insert(cart);
    }

    @Override
    public boolean update(Cart cart) {
        return cartDao.update(cart);
    }

    @Override
    public boolean delete(String id) {
        return cartDao.delete(id);
    }

    @Override
    public Cart getById(String id) {
        return cartDao.getById(id);
    }

    @Override
    public Cart getCartByCustomerId(String customerId) {
        return cartDao.getCartByCustomerId(customerId);
    }


    @Override
    public List<Cart> getAll() {
        return cartDao.getAll();
    }


}
