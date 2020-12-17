package com.tmdt.dao;

import com.tmdt.mapper.CartItemMapper;
import com.tmdt.mapper.CartMapper;
import com.tmdt.model.CartItemModel;
import com.tmdt.model.CartModel;

import java.util.List;

public class CartItemDAO extends GenericDAO<CartItemModel>{
    public List<CartItemModel> findAll(){
        String sql="Select * from CartItem";
        List<CartItemModel> cartItems = query(sql,new CartItemMapper());
        return cartItems.isEmpty() ? null : cartItems;
    }
}
