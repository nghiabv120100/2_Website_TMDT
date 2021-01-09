package com.tmdt.service;

import com.tmdt.dao.CartDAO;
import com.tmdt.model.CartModel;

import javax.inject.Inject;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

public class CartService {

    @Inject
    CartDAO cartDAO;
    public List<CartModel> findAll(){
        return cartDAO.findAll();
    }
    public List<CartModel> findByUserId(int user_id){
        return cartDAO.findByUserId(user_id);
    }
    public int save(CartModel cartModel){
        return cartDAO.save(cartModel);
    }
    public void delete(int id) {
        cartDAO.delete(id);
    }
}
