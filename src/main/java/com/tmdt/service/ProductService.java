package com.tmdt.service;

import com.tmdt.dao.ProductDAO;
import com.tmdt.model.ProductModel;

import javax.inject.Inject;
import java.util.List;

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
    public void delete(int id){
            productDAO.delete(id);
    }
    public List<ProductModel> findAll(){
        return productDAO.findAll();
    }
    public ProductModel findOne(int id){
        return productDAO.findOne(id);
    }
}
