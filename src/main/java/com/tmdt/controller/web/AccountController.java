package com.tmdt.controller.web;

import com.tmdt.model.AccountModel;
import com.tmdt.service.AccountService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = {"/account-manager"})
public class AccountController extends HttpServlet {
    @Inject
    private AccountService accountService;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String username=(String) session.getAttribute("loginName");
        if (username!=null) {
            AccountModel accountModel= accountService.findByUsername(username);
            req.setAttribute("accountModel",accountModel);
            RequestDispatcher rd = req.getRequestDispatcher("/views/web/checkout.jsp");
            rd.forward(req,resp);
        }
        else {
            RequestDispatcher rd = req.getRequestDispatcher("/views/web/index.jsp");
            rd.forward(req,resp);
        }
    }
}
