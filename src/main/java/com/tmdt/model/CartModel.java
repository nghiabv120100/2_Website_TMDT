package com.tmdt.model;

import java.util.Date;
import java.util.List;

public class CartModel {
    private int id;
    private int userID;
    private double totalPrice;
    private Date buyDate;
    private List<CartItemModel> itemModelList;

    public List<CartItemModel> getItemModelList() {
        return itemModelList;
    }

    public void setItemModelList(List<CartItemModel> itemModelList) {
        this.itemModelList = itemModelList;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Date getBuyDate() {
        return buyDate;
    }

    public void setBuyDate(Date buyDate) {
        this.buyDate = buyDate;
    }
}
