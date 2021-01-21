package com.tmdt.dao;

import com.tmdt.mapper.BrandMapper;
import com.tmdt.mapper.ProductMapper;
import com.tmdt.model.BrandModel;
import com.tmdt.model.ProductModel;

import java.util.List;

public class BrandDAO extends GenericDAO<BrandModel> {
    public List<BrandModel> findAll(){
        String sql="Select * from Brand";
        List<BrandModel> brands = query(sql,new BrandMapper());
        return brands.isEmpty() ? null : brands;
    }
}
