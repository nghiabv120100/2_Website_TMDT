package com.tmdt.dao;

import com.tmdt.mapper.AccountMapper;
import com.tmdt.model.AccountModel;

import java.util.List;

public class AccountDAO extends GenericDAO <AccountDAO>{
    public AccountModel findByUsernameAndPassword(String username,String password){
        String sql="Select * from Account where username=? and password=?";
        List<AccountModel> accounts = query(sql,new AccountMapper(),username,password);
        return accounts.isEmpty() ? null:accounts.get(0);
    }

    public List<AccountModel> finAll()
    {
        String sql="Select * from account";
        List<AccountModel> accounts = query(sql,new AccountMapper());
        return accounts.isEmpty() ? null : accounts;
    }

}
