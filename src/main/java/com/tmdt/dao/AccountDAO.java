package com.tmdt.dao;

import com.tmdt.mapper.AccountMapper;
import com.tmdt.mapper.ProductMapper;
import com.tmdt.model.AccountModel;
import com.tmdt.model.AccountModel;
import com.tmdt.model.ProductModel;

import java.util.List;

<<<<<<< HEAD
public class AccountDAO extends GenericDAO {
    public List<AccountModel> finAll()
    {
        String sql="Select * from account";
        List<AccountModel> accounts = query(sql,new AccountMapper());
        return accounts.isEmpty() ? null : accounts;
    }
    public AccountModel findOne(int id){
        String sql="Select * from Account where id =?";
        List<AccountModel> accounts = query(sql,new AccountMapper(),id);
        return accounts.isEmpty() ? null : accounts.get(0);
    }
=======
public class AccountDAO extends GenericDAO <AccountDAO>{
>>>>>>> 47ad7b79384ab300c94883fb9d527806c0adb05c
    public AccountModel findByUsernameAndPassword(String username,String password){
        String sql="Select * from Account where username=? and password=?";
        List<AccountModel> accounts = query(sql,new AccountMapper(),username,password);
        return accounts.isEmpty() ? null:accounts.get(0);
    }
<<<<<<< HEAD
    public int save(AccountModel accountModel){
        String sql="insert into Account(username,password,email,phonenumber,address,avatar,role_id) values(?,?,?,?,?,?,?)";
        return insert(sql,accountModel.getUsername(),accountModel.getPassword()
                ,accountModel.getEmail(),accountModel.getPhonenumber(),accountModel.getAddress(),
                accountModel.getAvatar(),accountModel.getRoleId());
    }
    public void update(AccountModel accountModel){
        String sql="update Account set username=?,password=?,email=?,phonenumber=?,address=?,avatar=?,role_id where id=?";
        update(sql,accountModel.getUsername(),accountModel.getPassword(),accountModel.getEmail(),accountModel.getPhonenumber()
        ,accountModel.getAddress(),accountModel.getAvatar(),accountModel.getRoleId(),accountModel.getId());
    }
    public void delete(int id){
        String sql="delete from Account where id=?";
        update(sql,id);
    }
    
=======

    public List<AccountModel> finAll()
    {
        String sql="Select * from account";
        List<AccountModel> accounts = query(sql,new AccountMapper());
        return accounts.isEmpty() ? null : accounts;
    }

>>>>>>> 47ad7b79384ab300c94883fb9d527806c0adb05c
}
