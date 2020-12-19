package com.tmdt.service;

import com.tmdt.dao.AccountDAO;
import com.tmdt.model.AccountModel;
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
<<<<<<< HEAD
    public AccountModel findOne(int id){
        return accountDAO.findOne(id);
    }
    public AccountModel save(AccountModel accountModel){
        int id = accountDAO.save(accountModel);
        System.out.println(id);
        return accountDAO.findOne(id);
    }
    public AccountModel update(AccountModel accountModel){
        accountDAO.update(accountModel);
        return accountDAO.findOne(accountModel.getId());
    }
    public void delete(int id){
        accountDAO.delete(id);
    }

=======
>>>>>>> 47ad7b79384ab300c94883fb9d527806c0adb05c

}
