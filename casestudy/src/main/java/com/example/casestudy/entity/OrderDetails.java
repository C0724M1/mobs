package com.example.casestudy.entity;

public class OrderDetails {
    private int orderDetail_ID;
    private int order_ID;
    private int book_ID;
    private int quantity;
    private float subTotal;

    public OrderDetails(){}

    public OrderDetails(int orderDetail_ID, int order_ID, int book_ID, int quantity, float subTotal) {
        this.orderDetail_ID = orderDetail_ID;
        this.order_ID = order_ID;
        this.book_ID = book_ID;
        this.quantity = quantity;
        this.subTotal = subTotal;
    }

    public int getOrderDetail_ID() {return orderDetail_ID;}
    public void setOrderDetail_ID(int orderDetail_ID) {this.orderDetail_ID = orderDetail_ID;}
    public int getOrder_ID() {return order_ID;}
    public void setOrder_ID(int order_ID) {this.order_ID = order_ID;}
    public int getBook_ID() {return book_ID;}
    public void setBook_ID(int book_ID) {this.book_ID = book_ID;}
    public int getQuantity() {return quantity;}
    public void setQuantity(int quantity) {this.quantity = quantity;}
    public float getSubTotal() {return subTotal;}
    public void setSubTotal(float subTotal) {this.subTotal = subTotal;}

}
