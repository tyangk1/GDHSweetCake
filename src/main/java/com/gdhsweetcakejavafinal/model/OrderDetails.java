package com.gdhsweetcakejavafinal.model;

import com.gdhsweetcakejavafinal.model.client.ProductCL;

public class OrderDetails {
    private String idOrder;
    private String idProduct;
    private int quantity;
    private String note;
    private Product products ;
    private ProductCL productCL;
    public OrderDetails() {
    }


    public OrderDetails(String idOrder, String idProduct, String nameProduct, int quantity, String note, Product products, ProductCL productCL) {
        this.idOrder = idOrder;
        this.idProduct = idProduct;
        this.quantity = quantity;
        this.note = note;
        this.products = products;
        this.productCL = productCL;
    }

    public String getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(String idOrder) {
        this.idOrder = idOrder;
    }

    public Product getProducts() {
        return products;
    }

    public void setProducts(Product products) {
        this.products = products;
    }

    public String getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(String idProduct) {
        this.idProduct = idProduct;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public ProductCL getProductCL() {
        return productCL;
    }

    public void setProductCL(ProductCL productCL) {
        this.productCL = productCL;
    }

    @Override
    public String toString() {
        return "OrderDetails{" +
                "idProduct='" + idProduct +
                ", quantily=" + quantity +
                ", note='" + note + '\'' +
                "product= " + products +
                '}';

    }


}
