package com.tmdt.controller.admin;

import com.tmdt.model.*;
import com.tmdt.service.*;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin-order-list"})
public class OrderController extends HttpServlet {

    @Inject
    ProductService productService;

    @Inject
    CategoryService categoryService;

    @Inject
    DetailCategoryService detailCategoryService;

    @Inject
    AccountService accountService;
    @Inject
    CartItemService cartItemService;

    @Inject
    CartService cartService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type= req.getParameter("type");
        String url ="";
        //ProductService productService =new ProductService();
        if ( type.equals("list")){
            List<ProductModel> productModelList= productService.findAll();
            List<DetailCategoryModel> detailCategoryModelList = detailCategoryService.findAll();
            List<AccountModel> accountModelList= accountService.findAll();
            List<CartItemModel> cartItemModelList =  cartItemService.findAll();
            List<CartModel> cartModelList =cartService.findAll();

            req.setAttribute("userList",accountModelList);
            req.setAttribute("detailCateList",detailCategoryModelList);
            req.setAttribute("proList",productModelList);
            req.setAttribute("cartItemList",cartItemModelList);
            req.setAttribute("cartList",cartModelList);
            url ="views/admin/view/list-order.jsp";

        }
        else if(type.equals("add")){
            List<DetailCategoryModel> detailCategories = detailCategoryService.findAll();

            req.setAttribute("detailCategories", detailCategories);
            url ="views/admin/view/add-product.jsp";
        }
        else if(type.equals("edit")){
            String id = req.getParameter("id");
            ProductModel product = productService.findOne(Integer.parseInt(id));
            List<DetailCategoryModel> detailCategories = detailCategoryService.findAll();

            req.setAttribute("detailCategories", detailCategories);
            System.out.println("Size of list"+ detailCategories.size());
            req.setAttribute("product", product);

            url ="views/admin/view/edit-product.jsp";
        }
        RequestDispatcher rd = req.getRequestDispatcher(url);
        rd.forward(req,resp);

    }
}
