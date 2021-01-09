package com.tmdt.controller.web;

import com.tmdt.Cons.AccountRegister;
import com.tmdt.Cons.Message;
import com.tmdt.model.ProductModel;
import com.tmdt.service.CategoryService;
import com.tmdt.service.DetailCategoryService;
import com.tmdt.service.ProductService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/trang-chu","/dang-ky"})
public class HomeController extends HttpServlet {
    @Inject
    private CategoryService categoryService;


    @Inject
    private DetailCategoryService detailCategoryService;

    @Inject
    private ProductService productService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //req.setAttribute("categories",categoryService.findAll());

        //req.setAttribute("detaiCategoriesById",detailCategoryService.findByCategoryId(1));

        /*String pro_name ="DellXPS 2020";
        String image ="path";
        double price =100;
        String describe ="Nothing";
        int cate_id =1;

        ProductModel productModel = new ProductModel();
        productModel.setProductName(pro_name);
        productModel.setImage(image);
        productModel.setPrice(price);
        productModel.setDescribePro(describe);
        productModel.setDetailCateId(cate_id);

        //ProductModel model= productService.save(productModel);
        System.out.println("Hello");
        RequestDispatcher rd = req.getRequestDispatcher("views/web/index.jsp");
        rd.forward(req,resp);*/
        String type= req.getParameter("action");
        if (type.equals("register")) {

            req.setAttribute("errUserName",Message.errUser);
            req.setAttribute("errEmail",Message.errEmail);
            req.setAttribute("errPhone",Message.errPhone);
            req.setAttribute("errPassword",Message.errPassword);
            req.setAttribute("errAddress",Message.errAddress);

            req.setAttribute("accountRegister",AccountRegister.getAccountRegister());




            RequestDispatcher rd = req.getRequestDispatcher("views/web/register.jsp");
            rd.forward(req,resp);
        }
        else if (type.equals("dangnhap")) {
            RequestDispatcher rd = req.getRequestDispatcher("views/web/login.jsp");
            rd.forward(req,resp);
        }
        else if (type.equals("home")) {
            AccountRegister.reset();
            Message.reset();
            RequestDispatcher rd = req.getRequestDispatcher("views/web/index.jsp");
            rd.forward(req,resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doPost(req, resp);
    }
}
