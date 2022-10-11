package com.gdhsweetcakejavafinal.model;

import java.util.ArrayList;
import java.util.List;

public class Order {
    private String idOrder;
    private String idCus;
    private String orderDate;
    private String deliveryDate; // ngày giao hàng
    private double discounted; // số tiền đã giảm
    private double intoMoney; // thành tiền
    private String orderNotes;
    private List<OrderDetails> orderDetailsList = new ArrayList<>();


    public Order() {
    }

    public Order(String idOrder, String idCus, String orderDate, String deliveryDate, double discounted, double intoMoney, String orderNotes) {
        this.idOrder = idOrder;
        this.idCus = idCus;
        this.orderDate = orderDate;
        this.deliveryDate = deliveryDate;
        this.discounted = discounted;
        this.intoMoney = intoMoney;
        this.orderNotes = orderNotes;
        this.orderDetailsList = orderDetailsList;
    }

    public void setDeliveryDate(String deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public String getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(String idOrder) {
        this.idOrder = idOrder;
    }

    public String getIdCus() {
        return idCus;
    }

    public void setIdCus(String idCus) {
        this.idCus = idCus;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public double getDiscounted() {
        return discounted;
    }

    public void setDiscounted(double discounted) {
        this.discounted = discounted;
    }


    public void setIntoMoney(double intoMoney) {
        this.intoMoney = intoMoney;
    }

    public String getOrderNotes() {
        return orderNotes;
    }

    public void setOrderNotes(String orderNotes) {
        this.orderNotes = orderNotes;
    }

    public String getDeliveryDate() {
        return deliveryDate;
    }

    public List<OrderDetails> getOrderDetailsList() {
        return orderDetailsList;
    }

    public void setOrderDetailsList(List<OrderDetails> orderDetailsList) {
        this.orderDetailsList = orderDetailsList;
    }


    public double getIntoMoney() {
        double total = 0;
        for (OrderDetails o : orderDetailsList) {
            total += o.getQuantity() * o.getProducts().getProductDetails().getPrice();
        }
        this.intoMoney = total;
        return this.intoMoney - this.discounted;
    }

}