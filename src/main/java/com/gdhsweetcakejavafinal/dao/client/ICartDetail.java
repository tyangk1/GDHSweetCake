package com.gdhsweetcakejavafinal.dao.client;

import com.gdhsweetcakejavafinal.model.client.CartDetail;

import java.util.List;

public interface ICartDetail {
    boolean insert(CartDetail cartDetail);

    boolean update(CartDetail cartDetail);

    boolean delete(String id);

    CartDetail getById(String id);

    List<CartDetail> getByIdCart(String idCart);

    List<CartDetail> getAll();

    List<CartDetail> getCartForImg(String idCustomer);

    double sumPriceCart(String idCustomer);

    CartDetail getCartDetailBySP(String idSp, String idCart);

    boolean deleteByMaSP(String maGH, String maSP);
}
