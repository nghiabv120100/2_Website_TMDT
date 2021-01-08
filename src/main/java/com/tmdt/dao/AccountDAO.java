package com.tmdt.dao;

import com.tmdt.mapper.AccountMapper;
import com.tmdt.model.AccountModel;

import java.util.List;

public class AccountDAO extends GenericDAO
{
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
    public AccountModel findByUsernameAndPassword(String username,String password){
        String sql="Select * from Account where username=? and password=?";
        List<AccountModel> accounts = query(sql,new AccountMapper(),username,password);
        return accounts.isEmpty() ? null:accounts.get(0);
    }
    public int save(AccountModel accountModel){
        String sql="insert into Account(username,password,email,phonenumber,address,avatar,role_id) values(?,?,?,?,?,?,?)";
        return insert(sql,accountModel.getUsername(),accountModel.getPassword()
                ,accountModel.getEmail(),accountModel.getPhonenumber(Phonenumber),accountModel.getAddress(),
                accountModel.getAvatar(),accountModel.getRoleId(RoleId));
    }
    public void insert(AccountModel accountModel)
    {
        String sql="insert into Account(username,password,email,phonenumber,address,avatar,role_id) values(?,?,?,?,?,?,0)";
        insert(sql,accountModel.getUsername(),accountModel.getPassword(),accountModel.getEmail(),accountModel.getPhonenumber(Phonenumber)
                ,accountModel.getAddress(),accountModel.getAvatar(),accountModel.getRoleId(RoleId),accountModel.getId());
    }
    public void update(AccountModel accountModel){
        String sql="update Account set username=?,password=?,email=?,phonenumber=?,address=?,avatar=?,role_id where id=?";
        update(sql,accountModel.getUsername(),accountModel.getPassword(),accountModel.getEmail(),accountModel.getPhonenumber(Phonenumber)
        ,accountModel.getAddress(),accountModel.getAvatar(),accountModel.getRoleId(RoleId),accountModel.getId());
    }
    public void delete(int id){
        String sql="delete from Account where id=?";
        update(sql,id);
    }
    
}
