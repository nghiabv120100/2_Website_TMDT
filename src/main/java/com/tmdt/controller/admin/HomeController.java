package com.tmdt.controller.admin;

import com.tmdt.model.AccountModel;
import com.tmdt.model.ProductModel;
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

@WebServlet(urlPatterns = {"/admin-home","/dang-nhap"})
public class HomeController extends HttpServlet {
    @Inject
    private AccountService accountService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action!=null && action.equals("login")){
            RequestDispatcher rd = req.getRequestDispatcher("views/login.jsp");
            rd.forward(req,resp);
        }
        else{
            RequestDispatcher rd = req.getRequestDispatcher("views/admin/view/index.jsp");
            rd.forward(req,resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        RequestDispatcher rd;
        if (action!=null && action.equals("login")){
            String username = req.getParameter("username");
            String password = req.getParameter("password");
            AccountModel user=new AccountModel();
            user.setUsername(username);
            user.setPassword(password);
            AccountModel accountModel = accountService.findByUsernameAndPassword(user);
            if (accountModel != null){
                if (accountModel.getRoleId()==1){
                    rd = req.getRequestDispatcher("views/admin/view/index.jsp");
                    rd.forward(req,resp);
                }
                else if (accountModel.getRoleId()==0){
                    rd = req.getRequestDispatcher("views/web/index.jsp");
                    rd.forward(req,resp);
                }
            }
            else {
                rd = req.getRequestDispatcher("views/login.jsp");
                rd.forward(req,resp);
            }

        }
        else{
            rd = req.getRequestDispatcher("views/login.jsp");
            rd.forward(req,resp);
        }

    }
}
