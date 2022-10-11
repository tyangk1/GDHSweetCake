package com.gdhsweetcakejavafinal.model.client;

import lombok.Data;

@Data
public class CartDetail {
    private String cartId;
    private String maSP;
    private int quantity;
    private double price;
    private String noteSP;
    private String linkAnh;
    private String nameSP;

    public CartDetail reduceQuantity() {
        CartDetail cartDetail = new CartDetail();
        cartDetail.setCartId(this.getCartId());
        cartDetail.setMaSP(this.getMaSP());
        cartDetail.setQuantity(this.getQuantity()-1);

        return  cartDetail;
    }
}
