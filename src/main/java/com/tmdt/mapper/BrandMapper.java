package com.tmdt.mapper;

import com.tmdt.model.BrandModel;
import com.tmdt.model.ProductModel;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;

public class BrandMapper implements IRowMapper<BrandModel> {

    @Override
    public BrandModel mapRow(ResultSet resultSet) {
        BrandModel brandModel = new BrandModel();
        try{
            brandModel.setId(resultSet.getInt("id"));
            brandModel.setBrandName(resultSet.getString("brand_name"));
            brandModel.setImage(resultSet.getString("image"));
        }
        catch (SQLException e){
            return null;
        }
        return brandModel;
    }
}
