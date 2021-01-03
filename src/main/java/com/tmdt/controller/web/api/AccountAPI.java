package com.tmdt.controller.web.api;

import com.tmdt.model.AccountModel;
import com.tmdt.model.ProductModel;
import com.tmdt.service.AccountService;
import com.tmdt.utils.HttpUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet(urlPatterns = {"/api-user-dangky","/api-user-change-password"})
public class AccountAPI extends HttpServlet {
    @Inject
    private AccountService accountService;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        AccountModel accountModel = HttpUtil.of(req.getReader()).toModel(AccountModel.class);
        if (accountModel.getUsername()=="" || accountModel.getPassword()=="" ||accountModel.getEmail()==""
                ||accountModel.getPhonenumber()=="" || !accountModel.getConfirmation_pwd().equals(accountModel.getPassword())){
            return;
        }
        accountModel= accountService.save(accountModel);
        if (accountModel!=null){
            mapper.writeValue(resp.getOutputStream(),accountModel);
        }
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        HttpSession session =req.getSession();
        String username =(String) session.getAttribute("loginName");
        if (username == null) {
            RequestDispatcher rd =req.getRequestDispatcher("views/web/index.jsp");
            rd.forward(req,resp);
        } else {
            AccountModel accountModel = accountService.findByUsername(username);
            AccountModel oldAccount = HttpUtil.of(req.getReader()).toModel(AccountModel.class);

            if (accountModel.getPassword().equals(oldAccount.getOldPassword()) && oldAccount.getPassword().equals(oldAccount.getConfirmation_pwd())) {
                accountModel.setPassword(oldAccount.getPassword());
                AccountModel newAccount= accountService.update(accountModel);
                mapper.writeValue(resp.getOutputStream(),accountModel);
            }
            else {
                return;
            }
        }

    }
}
