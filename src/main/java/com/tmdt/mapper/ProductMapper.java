package com.tmdt.mapper;

import com.tmdt.model.ProductModel;
import com.tmdt.model.ProductModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements IRowMapper<ProductModel>{

    @Override
    public ProductModel mapRow(ResultSet resultSet) {
        ProductModel productModel = new ProductModel();
        try{
            productModel.setId(resultSet.getInt("id"));
            productModel.setProductName(resultSet.getString("product_name"));
            productModel.setImage(resultSet.getString("image"));
            productModel.setPrice(resultSet.getDouble("price"));
            productModel.setDescribePro(resultSet.getString("describe_pro"));
            productModel.setDetailCateId(resultSet.getInt("detail_cate_id"));
        }
        catch (SQLException e){
            return null;
        }
        return productModel;
    }
}
