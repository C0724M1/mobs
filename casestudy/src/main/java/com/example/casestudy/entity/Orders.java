package com.example.casestudy.entity;

import java.util.Date;

public class Orders {
    private int order_ID;
    private int user_ID;
    private Date order_Date;
    private float order_TotalAmount;
    private String order_Status;

    public Orders() {}
    public Orders(int order_ID, Date order_Date, float order_TotalAmount, String order_Status) {
        this.order_ID = order_ID;
        this.order_Date = order_Date;
        this.order_TotalAmount = order_TotalAmount;
        this.order_Status = order_Status;
    }

    public int getOrder_ID() {return order_ID;}
    public void setOrder_ID(int order_ID) {this.order_ID = order_ID;}
    public int getUser_ID() {return user_ID;}
    public void setUser_ID(int user_ID) {this.user_ID = user_ID;}
    public Date getOrder_Date() {return order_Date;}
    public void setOrder_Date(Date order_Date) {this.order_Date = order_Date;}
    public float getOrder_TotalAmount() {return order_TotalAmount;}
    public void setOrder_TotalAmount(float order_TotalAmount) {this.order_TotalAmount = order_TotalAmount;}
    public String getOrder_Status() {return order_Status;}
    public void setOrder_Status(String order_Status) {this.order_Status = order_Status;}

}
