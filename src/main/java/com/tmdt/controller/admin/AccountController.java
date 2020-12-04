package com.tmdt.controller.admin;


import com.tmdt.model.AccountModel;
import com.tmdt.service.AccountService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/admin-user-list")
public class AccountController extends HttpServlet {

    @Inject
    private AccountService accountService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<AccountModel> accountModelList = accountService.findAll();
        req.setAttribute("userList",accountModelList);
        RequestDispatcher rd = req.getRequestDispatcher("views/admin/view/list-user.jsp");
        rd.forward(req,resp);

    }
}
