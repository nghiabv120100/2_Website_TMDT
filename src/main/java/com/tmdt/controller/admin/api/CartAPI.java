package com.tmdt.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tmdt.model.CartItemModel;
import com.tmdt.model.CartModel;
import com.tmdt.model.ProductModel;
import com.tmdt.service.CartItemService;
import com.tmdt.service.CartService;
import com.tmdt.service.ProductService;
import com.tmdt.utils.HttpUtil;
import org.apache.commons.fileupload.FileItem;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/api-admin-cart"})
public class CartAPI extends HttpServlet {
    @Inject
    private CartService cartService;
    @Inject
    private CartItemService cartItemService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       /* ObjectMapper mapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json"); //

        // Convert from type json to Model
        int cart_id  =11;
        List<CartItemModel>  cartItemListByCartId = cartItemService.findByCartId(cart_id);
        req.setAttribute("cartItemListByCartId",cartItemListByCartId);
        mapper.writeValue(resp.getOutputStream(),cartItemListByCartId);
        resp.sendRedirect( req.getContextPath()+"/admin-order-list?type=list");*/

    }

}
