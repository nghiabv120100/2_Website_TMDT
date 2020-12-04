package com.tmdt.service;

import com.tmdt.dao.DetailCategoryDAO;
import com.tmdt.model.DetailCategoryModel;

import javax.inject.Inject;
import java.util.List;

public class DetailCategoryService {
    @Inject
    private DetailCategoryDAO detailCategoryDAO;
    public List<DetailCategoryModel> findByCategoryId(int cateId){
        return detailCategoryDAO.findByDetailCategoryID(cateId);
    }
    public List<DetailCategoryModel> findAll(){
        return detailCategoryDAO.findAll();
    }
}
