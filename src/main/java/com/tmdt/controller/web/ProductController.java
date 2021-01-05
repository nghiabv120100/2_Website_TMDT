package com.tmdt.controller.web;

import com.tmdt.model.DetailCategoryModel;
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
import java.util.List;
@WebServlet(urlPatterns = {"/client-product-list"})
public class ProductController extends HttpServlet{
    @Inject
    ProductService productService;

    @Inject
    CategoryService categoryService;

    @Inject
    DetailCategoryService detailCategoryService;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type= req.getParameter("type");
        String url ="";
        if ( type.equals("list")){
            List<ProductModel> productModelList = productService.findAll();
            req.setAttribute("proList",productModelList);
            url="views/web/shop.jsp";
        }
        else if(type.equals("category")){
            int cate_id =Integer.parseInt(req.getParameter("cate_id"));
            List<ProductModel> productModelList= productService.findByCategory(cate_id);
            List<DetailCategoryModel> detailCategoryModelList = detailCategoryService.findAll();

            req.setAttribute("detailCateList",detailCategoryModelList);
            req.setAttribute("proList",productModelList);
            url ="views/web/shop.jsp";
        }
        else if(type.equals("detail_category")) {
            int detail_cate_id =Integer.parseInt(req.getParameter("detail_cate_id"));
            List<ProductModel> productModelList= productService.findByDetailCategory(detail_cate_id);
            req.setAttribute("proList",productModelList);
            url ="views/web/shop.jsp";
        }
        RequestDispatcher rd = req.getRequestDispatcher(url);
        rd.forward(req,resp);
    }
}
