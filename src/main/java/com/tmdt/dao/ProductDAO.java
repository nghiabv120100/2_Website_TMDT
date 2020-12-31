package com.tmdt.dao;

import com.tmdt.mapper.ProductMapper;
import com.tmdt.model.ProductModel;
import com.tmdt.service.ProductService;

import java.sql.*;
import java.util.List;

public class ProductDAO extends GenericDAO<ProductModel>{

    public ProductModel findOne(int id){
        String sql="Select * from Product where id =?";
        List<ProductModel> products = query(sql,new ProductMapper(),id);
        return products.isEmpty() ? null : products.get(0);
    }
    public List<ProductModel> findAll(){
        String sql="Select * from Product";
        List<ProductModel> products = query(sql,new ProductMapper());
        return products.isEmpty() ? null : products;
    }
    public int save(ProductModel productModel){
        String sql="insert into Product(product_name,image,price,describe_pro,detail_cate_id) values(?,?,?,?,?)";
        return insert(sql,productModel.getProductName(),productModel.getImage()
                ,productModel.getPrice(),productModel.getDescribePro(),productModel.getDetailCateId());
    }
    public void update(ProductModel productModel){
        String sql="update Product set product_name=?,image=?,price=?,describe_pro=?,detail_cate_id=? where id=?";
        update(sql,productModel.getProductName(),productModel.getImage(),productModel.getPrice()
                ,productModel.getDescribePro(),productModel.getDetailCateId(),productModel.getId());
    }
    public void delete(int id){
        String sql="delete from Product where id=?";
        update(sql,id);
    }

    public List<ProductModel> findByCategory(int cate_id){
        String sql="Select * from Product,DetailCategory,Category " +
                "where Product.detail_cate_id=DetailCategory.id and DetailCategory.cate_id=Category.id and Category.id =?";
        List<ProductModel> products = query(sql,new ProductMapper(),cate_id);
        return products.isEmpty() ? null : products;
    }
    public List<ProductModel> findByDetailCategory(int detail_cate_id){
        String sql="Select * from Product " +
                "where Product.detail_cate_id=?";
        List<ProductModel> products = query(sql,new ProductMapper(),detail_cate_id);
        return products.isEmpty() ? null : products;
    }

}
