package com.tmdt.service;

import com.tmdt.dao.ProductDAO;
import com.tmdt.model.ProductModel;

import javax.inject.Inject;

public class ProductService {
    @Inject
    private ProductDAO productDAO;

    public ProductModel save(ProductModel productModel){
        int id = productDAO.save(productModel);
        System.out.println(id);
        return null;
    }
}
