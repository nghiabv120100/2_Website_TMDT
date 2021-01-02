package com.tmdt.dao;

import com.tmdt.mapper.CartMapper;
import com.tmdt.model.CartModel;
import com.tmdt.model.CartModel;

import java.util.List;

public class CartDAO extends GenericDAO<CartModel> {

    public CartModel findOne(int id){
        String sql="Select * from Cart where id =?";
        List<CartModel> carts = query(sql,new CartMapper(),id);
        return carts.isEmpty() ? null : carts.get(0);
    }
    public List<CartModel> findAll(){
        String sql="Select * from Cart";
        List<CartModel> carts = query(sql,new CartMapper());
        return carts.isEmpty() ? null : carts;
    }
    public int save(CartModel cartModel){
        if (cartModel.getUserID() > 0) {
            String sql="insert into Cart(user_id,total_price) values(?,?)";
            return insert(sql,cartModel.getUserID(),cartModel.getTotalPrice());
        } else if(cartModel.getCustomerID() > 0) {
            String sql="insert into Cart(customer_id,total_price) values(?,?)";
            return insert(sql,cartModel.getCustomerID(),cartModel.getTotalPrice());
        } else
            return -1;

    }
    public void update(CartModel cartModel){
        /*String sql="update Cart set product_name=?,image=?,price=?,describe_pro=?,detail_cate_id=? where id=?";
        update(sql,cartModel.getCartName(),cartModel.getImage(),cartModel.getPrice()
                ,cartModel.getDescribePro(),cartModel.getDetailCateId(),cartModel.getId());*/
    }
    public void delete(int id){
        String sql="delete from Cart where id=?";
        update(sql,id);
    }
}
