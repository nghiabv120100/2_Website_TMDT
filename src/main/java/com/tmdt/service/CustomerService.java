package com.tmdt.service;

import com.tmdt.dao.CustomerDAO;
import com.tmdt.model.CustomerModel;

import javax.inject.Inject;
import java.util.List;

public class CustomerService {
    @Inject
    private CustomerDAO customerDAO;
    public int save(CustomerModel customerModel) {
        return customerDAO.save(customerModel);
    }
    public List<CustomerModel> findAll() {
        return customerDAO.findAll();
    }
}
