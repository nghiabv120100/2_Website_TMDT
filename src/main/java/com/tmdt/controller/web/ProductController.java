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
            List<ProductModel> productModelList= productService.findAll();
            List<DetailCategoryModel> detailCategoryModelList = detailCategoryService.findAll();
            req.setAttribute("detailCateList",detailCategoryModelList);
            req.setAttribute("proList",productModelList);
            url ="views/web/index.jsp";

        }
        /*else if(type.equals("add")){
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
        }*/
        RequestDispatcher rd = req.getRequestDispatcher(url);
        rd.forward(req,resp);
    }
}
