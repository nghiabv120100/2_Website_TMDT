package com.tmdt.service;

import com.tmdt.dao.CartDAO;
import com.tmdt.model.CartModel;

import javax.inject.Inject;
import java.util.List;

public class CartService {
    @Inject
    CartDAO cartDAO;
    public List<CartModel> findAll(){
        return cartDAO.findAll();
    }
}
