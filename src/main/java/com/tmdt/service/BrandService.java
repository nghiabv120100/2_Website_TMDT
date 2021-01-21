package com.tmdt.service;

import com.tmdt.dao.BrandDAO;
import com.tmdt.model.BrandModel;

import javax.inject.Inject;
import java.util.List;

public class BrandService {
    @Inject
    private BrandDAO brandDAO;
    public List<BrandModel> findAll() {
        return brandDAO.findAll();
    }
}
