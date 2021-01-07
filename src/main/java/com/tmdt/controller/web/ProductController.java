package com.tmdt.controller.web;

import com.tmdt.model.CartItemModel;
import com.tmdt.model.DetailCategoryModel;
import com.tmdt.model.ProductModel;
import com.tmdt.service.CategoryService;
import com.tmdt.service.DetailCategoryService;
import com.tmdt.service.ProductService;
import com.tmdt.utils.HttpUtil;

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
        int offset=0;
        int numOfPages=0;
        int limit=9;
        String type= req.getParameter("type");
        String url ="";
        if ( type.equals("list")){
            int currentPage=Integer.parseInt(req.getParameter("page"));
            offset=(currentPage-1)*limit;
            List<ProductModel> productModelList = productService.findAll();
            List<ProductModel> products = productService.findAllByPage(offset,limit);
            int numOfProducts = 0;
            if (productModelList != null) {
                numOfProducts= productModelList.size();
            }
            int litmit=9;
            if (numOfProducts/litmit==(float)numOfProducts/litmit){
                numOfPages = numOfProducts/litmit;
            }
            else{
                numOfPages = numOfProducts/litmit+1;
            }
            req.setAttribute("type",type);
            req.setAttribute("currentPage",currentPage);
            req.setAttribute("numOfPages",numOfPages);
            req.setAttribute("proList",products);
            url="views/web/shop.jsp";
        }
        else if(type.equals("category")){
            int currentPage=Integer.parseInt(req.getParameter("page"));
            offset=(currentPage-1)*limit;

            int cate_id =Integer.parseInt(req.getParameter("cate_id"));
            List<ProductModel> productModelList= productService.findByCategory(cate_id);
            List<DetailCategoryModel> detailCategoryModelList = detailCategoryService.findAll();
            List<ProductModel> products= productService.findByCategoryAndPage(cate_id,offset,limit);

            int numOfProducts = 0;
            if (productModelList != null) {
                numOfProducts= productModelList.size();
            }
            int litmit=9;
            if (numOfProducts/litmit==(float)numOfProducts/litmit){
                numOfPages = numOfProducts/litmit;
            }
            else{
                numOfPages = numOfProducts/litmit+1;
            }
            req.setAttribute("cate_id",cate_id);
            req.setAttribute("type",type);
            req.setAttribute("currentPage",currentPage);
            req.setAttribute("numOfPages",numOfPages);
            req.setAttribute("detailCateList",detailCategoryModelList);
            req.setAttribute("proList",products);
            url="views/web/shop.jsp";


        }
        else if(type.equals("detail_category")) {
            int currentPage=Integer.parseInt(req.getParameter("page"));
            offset=(currentPage-1)*limit;
            int detail_cate_id =Integer.parseInt(req.getParameter("detail_cate_id"));
            List<ProductModel> productModelList= productService.findByDetailCategoryAndPage(detail_cate_id,offset,limit);
//            List<DetailCategoryModel> detailCategoryModelList = detailCategoryService.findAll();
            List<ProductModel> products= productService.findByDetailCategoryAndPage(detail_cate_id,offset,limit);

            int numOfProducts = 0;
            if (productModelList != null) {
                numOfProducts= productModelList.size();
            }
            int litmit=9;
            if (numOfProducts/litmit==(float)numOfProducts/litmit){
                numOfPages = numOfProducts/litmit;
            }
            else{
                numOfPages = numOfProducts/litmit+1;
            }

            req.setAttribute("type",type);
            req.setAttribute("currentPage",currentPage);
            req.setAttribute("numOfPages",numOfPages);
            req.setAttribute("proList",products);
            req.setAttribute("detail_cate_id",detail_cate_id);
            url ="views/web/shop.jsp";
        }
        else if (type.equals("detail_product")) {
            int id=Integer.parseInt(req.getParameter("id"));
            int quantity =Integer.parseInt(req.getParameter("quantity"));
            ProductModel productModel = productService.findOne(id);
            req.setAttribute("quantity",quantity);
            req.setAttribute("productModel",productModel);
            url ="views/web/product-details.jsp";
        } else if (type.equals("add")) {
            int id=Integer.parseInt(req.getParameter("id"));
            int quantity =Integer.parseInt(req.getParameter("quantity"));
            CartItemModel item = HttpUtil.of(req.getReader()).toModel(CartItemModel.class);
            String action =req.getParameter("action");
            if (action.equals("add")) {
                item.setQuantity(item.getQuantity()+1);
            } else if (action.equals("sub") && item.getQuantity() > 0) {
                item.setQuantity(item.getQuantity()-1);
            }
        } else if (type.equals("searchByName")) {
            int currentPage=Integer.parseInt(req.getParameter("page"));
            offset=(currentPage-1)*limit;

            String keyword =req.getParameter("keyword");
            List<ProductModel> productModelList= productService.searchByKeyword(keyword);
            List<ProductModel> products= productService.searchByKeywordAndPage(keyword,offset,limit);

            int numOfProducts = 0;
            if (productModelList != null) {
                numOfProducts= productModelList.size();
            }
            int litmit=9;
            if (numOfProducts/litmit==(float)numOfProducts/litmit){
                numOfPages = numOfProducts/litmit;
            }
            else{
                numOfPages = numOfProducts/litmit+1;
            }
            req.setAttribute("keyword",keyword);
            req.setAttribute("type",type);
            req.setAttribute("currentPage",currentPage);
            req.setAttribute("numOfPages",numOfPages);
            req.setAttribute("proList",products);
            url="views/web/shop.jsp";
        }
        RequestDispatcher rd = req.getRequestDispatcher(url);
        rd.forward(req,resp);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String type=req.getParameter("type");
        if (type.equals("add")) {
        CartItemModel item = HttpUtil.of(req.getReader()).toModel(CartItemModel.class);
        String action =req.getParameter("action");
        if (action.equals("add")) {
            item.setQuantity(item.getQuantity()+1);
        } else if (action.equals("sub") && item.getQuantity() > 0) {
            item.setQuantity(item.getQuantity()-1);
            }
        }
    }
}
