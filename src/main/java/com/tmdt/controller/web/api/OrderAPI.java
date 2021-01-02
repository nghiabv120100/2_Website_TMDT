package com.tmdt.controller.web.api;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.tmdt.model.AccountModel;
import com.tmdt.model.CartItemModel;
import com.tmdt.model.CustomerModel;
import com.tmdt.model.CartModel;
import com.tmdt.service.AccountService;
import com.tmdt.service.CartItemService;
import com.tmdt.service.CartService;
import com.tmdt.service.CustomerService;
import com.tmdt.utils.HttpUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = {"/api-user-order"})
public class OrderAPI extends HttpServlet {
    @Inject
    private AccountService accountService;
    @Inject
    private CartService cartService;
    @Inject
    private CartItemService cartItemService;
    @Inject
    private CustomerService customerService;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        HttpSession session = req.getSession();
        CartModel cartModel=(CartModel) session.getAttribute("order");
        String userName = (String) session.getAttribute("loginName");
        if (cartModel != null) {
            if (userName == null) {
                CustomerModel customerModel = HttpUtil.of(req.getReader()).toModel(CustomerModel.class);
                int cus_id = customerService.save(customerModel);
                cartModel.setCustomerID(cus_id);
                int cart_id = cartService.save(cartModel);
                for(CartItemModel item: cartModel.getItemModelList()) {
                    item.setCartId(cart_id);
                    cartItemService.save(item);
                }
                mapper.writeValue(resp.getOutputStream(),customerModel);
            }
            else {
                AccountModel accountModel = accountService.findByUsername(userName);
                cartModel.setUserID(accountModel.getId());
                int cart_id = cartService.save(cartModel);
                for(CartItemModel item: cartModel.getItemModelList()) {
                    item.setCartId(cart_id);
                    cartItemService.save(item);
                }
                System.out.println("Mua hang thanh cong");
            }

        }
    }
}
