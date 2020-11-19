package com.tmdt.service;

import com.tmdt.dao.CategoryDAO;
import com.tmdt.model.CategoryModel;

import javax.inject.Inject;
import java.util.List;

public class CategoryService {

    @Inject
    private CategoryDAO categoryDAO;

    public List<CategoryModel> findAll() {
        return  categoryDAO.findAll();
    }

}
