package com.tmdt.controller.web;

import com.tmdt.model.CartItemModel;
import com.tmdt.model.CartModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/client-cart-list"})
public class CartController  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        CartModel cartModel =  (CartModel) session.getAttribute("order");
        if (cartModel != null) {
            List<CartItemModel> cartItemModelList = cartModel.getItemModelList();
            req.setAttribute("cartItemModelList",cartItemModelList);
        }

        String url ="views/web/cart.jsp";
        RequestDispatcher rd = req.getRequestDispatcher(url);
        rd.forward(req,resp);
    }
}
