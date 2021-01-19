package com.tmdt.controller.web;

import com.tmdt.model.AccountModel;
import com.tmdt.model.CartModel;
import com.tmdt.model.CustomerModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns= {"/paySuccess"})
public class PaySuccessController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        CartModel cartModel=(CartModel) session.getAttribute("order");
        AccountModel user = (AccountModel) session.getAttribute("user");
        CustomerModel customer = (CustomerModel) session.getAttribute("customer") ;
        AccountModel user_cus = new AccountModel();
        if (customer != null) {

            user_cus.setUsername(customer.getFullname());
            user_cus.setAddress(customer.getAddress());
            user_cus.setPhonenumber(customer.getPhonenumber());
            user_cus.setEmail(customer.getEmail());
        }

        req.setAttribute("cart",cartModel);
        if (user_cus != null) {
            req.setAttribute("user", user_cus);
        } else {
            req.setAttribute("user",user);
        }
        session.removeAttribute("isOnline");
        RequestDispatcher rd = req.getRequestDispatcher("views/web/continue-order.jsp");
        rd.forward(req,resp);
    }
}
