package com.tmdt.controller.web;

import com.tmdt.Cons.AccountRegister;
import com.tmdt.Cons.Message;
import com.tmdt.model.AccountModel;
import com.tmdt.model.CartItemModel;
import com.tmdt.model.CartModel;
import com.tmdt.model.CustomerModel;
import com.tmdt.service.ProductService;
import com.tmdt.utils.JavaMailUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns= {"/paySuccess"})
public class PaySuccessController extends HttpServlet {
    @Inject
    ProductService productService;

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
        } else {
            user_cus=user;
        }
        AccountRegister.setAccountRegister(user_cus);
        Message.reset();
        boolean check = false;
        double totalPrice =0;

        if(user_cus.getUsername().equals(""))
        {

            Message.errUser="Vui long nhap UserName !";
            check = true;
        }
        if(user_cus.getEmail().equals(""))
        {
            Message.errEmail = "Vui long nhap Email !";
            check = true;
        }
        if(user_cus.getPhonenumber().equals(""))
        {
            Message.errPhone = "Vui long nhap SDT";
            check = true;
        }

        if(user_cus.getAddress().equals(""))
        {
            Message.errAddress = "Vui long nhap dia chi!";
            check = true;
        }
        if(check == true) {
            req.setAttribute("errUserName", Message.errUser);
            req.setAttribute("errEmail", Message.errEmail);
            req.setAttribute("errPhone", Message.errPhone);
            req.setAttribute("errAddress", Message.errAddress);
            req.setAttribute("accountModel", AccountRegister.getAccountRegister());
            req.setAttribute("cart", cartModel);
            req.setAttribute("user", user_cus);
            List<CartItemModel> cartItemModelList = cartModel.getItemModelList();
            req.setAttribute("cartItemModelList", cartItemModelList);
            for (CartItemModel item : cartItemModelList) {
                totalPrice += item.getUnitPrice() * item.getQuantity();
                session.setAttribute("oder", "oder");
                RequestDispatcher rd = req.getRequestDispatcher("views/web/cart.jsp");
                rd.forward(req, resp);
            }
        }
        else {
            req.setAttribute("cart", cartModel);
            req.setAttribute("user", user_cus);
            //                          Nghĩa Bùi thêm gửi mail
            totalPrice = 0;
            StringBuilder content = new StringBuilder("<p>Xin chào " + user_cus.getUsername() + "<p>");
            content.append("<p>Đơn hàng #" + cartModel.getId() + " của bạn đã được giao thành công.</p>");
            content.append("<p>THÔNG TIN ĐƠN HÀNG - DÀNH CHO NGƯỜI MUA<p>");
            content.append("<table><tr><th>Tên Sản Phẩm       </th><th>Số lượng         </th><th>Đơn giá       </th></tr>");
            for (CartItemModel item : cartModel.getItemModelList()) {
                content.append("<tr><td>" + item.getProduct().getProductName() + "</td><td>    " + item.getQuantity() + "</td><td>   " + Math.round(item.getUnitPrice()) + " VNĐ</td></tr>");
                totalPrice += item.getQuantity() * item.getUnitPrice();
                // trừ sản phẩm trong kho
                item.getProduct().setQuantity(item.getProduct().getQuantity() - item.getQuantity());
                productService.update(item.getProduct());
            }
            content.append("</table><br>");
            if (session.getAttribute("isOnline") != null) {
                content.append("<p>Hình thức thanh toán: Thanh toán online</p><br>");
                req.setAttribute("payment", "Thanh toán online");
            } else {
                content.append("<p>Hình thức thanh toán: Trả tiền khi nhận hàng</p><br>");
                req.setAttribute("payment", "Trả tiền khi nhận hàng");
            }
            content.append("<p>Tổng Tiền : " + Math.round(totalPrice) + " VNĐ</p>");
            try {
                JavaMailUtil.sendMail(user_cus.getEmail(), "Đặt hàng thành công!", content.toString());
            } catch (Exception e) {
                e.printStackTrace();
            }
            req.setAttribute("totalPrice", totalPrice);
            session.removeAttribute("isOnline");
            session.removeAttribute("order");

            RequestDispatcher rd = req.getRequestDispatcher("views/web/continue-order.jsp");
            rd.forward(req, resp);
            }
        }
    }
