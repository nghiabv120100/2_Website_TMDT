package com.tmdt.controller.admin;

import com.tmdt.model.ProductModel;
import com.tmdt.service.ProductService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin-product-list"})
public class ProductController extends HttpServlet {

    @Inject
    ProductService productService;


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ProductModel> productModelList= productService.findAll();
        req.setAttribute("proList",productModelList);
        RequestDispatcher rd = req.getRequestDispatcher("views/admin/view/list-product.jsp");
        rd.forward(req,resp);
    }
}
