package com.tmdt.mapper;

import com.tmdt.model.CartModel;
import com.tmdt.model.CartModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CartMapper implements IRowMapper<CartModel> {
    @Override
    public CartModel mapRow(ResultSet resultSet) {
        CartModel cartModel = new CartModel();
        try{
            cartModel.setId(resultSet.getInt("id"));
            cartModel.setUserID(resultSet.getInt("user_id"));
            cartModel.setTotalPrice(resultSet.getDouble("total_price"));
            cartModel.setBuyDate(resultSet.getDate("buydate"));
        }
        catch (SQLException e){
            return null;
        }
        return cartModel;
    }
}
