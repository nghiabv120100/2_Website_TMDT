package com.tmdt.service;

import com.tmdt.dao.ProductDAO;
import com.tmdt.model.ProductModel;

import javax.inject.Inject;

public class ProductService {
    @Inject
    private ProductDAO productDAO;

    public ProductModel save(ProductModel productModel){
        int id = productDAO.save(productModel);
        return productDAO.findOne(id);
    }
    public ProductModel update(ProductModel productModel){
        productDAO.update(productModel);
        return productDAO.findOne(productModel.getId());
    }
    public void delete(int[] ids){
        for(int id:ids){
            productDAO.delete(id);
        }
    }

}
