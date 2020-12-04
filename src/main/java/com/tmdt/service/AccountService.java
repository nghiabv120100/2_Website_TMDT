package com.tmdt.service;

import com.tmdt.dao.AccountDAO;
import com.tmdt.model.AccountModel;

import javax.inject.Inject;
import java.util.List;

public class AccountService {
    @Inject
    private AccountDAO accountDAO;
    public AccountModel findByUsernameAndPassword(AccountModel accountModel){
        return accountDAO.findByUsernameAndPassword(accountModel.getUsername(),accountModel.getPassword());
    }

    public List<AccountModel> findAll(){
        return accountDAO.finAll();
    }

}
