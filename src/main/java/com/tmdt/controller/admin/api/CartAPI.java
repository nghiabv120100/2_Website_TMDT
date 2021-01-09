package com.tmdt.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tmdt.model.ProductModel;
import com.tmdt.service.CartService;
import com.tmdt.service.ProductService;
import com.tmdt.utils.HttpUtil;
import org.apache.commons.fileupload.FileItem;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

@WebServlet(urlPatterns = {"/api-admin-cart"})
public class CartAPI extends HttpServlet {
    @Inject
    private ProductService productService;
    @Inject
    private CartService cartService;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json"); //

        // Convert from type json to Model
        ProductModel productModel = HttpUtil.of(req.getReader()).toModel(ProductModel.class);
        System.out.println(productModel.getPrice());
        System.out.println(productModel.getId());
        productModel = productService.save(productModel);
        mapper.writeValue(resp.getOutputStream(),productModel);
        System.out.println(productModel);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json"); //
        // Convert from type json to Model
        ProductModel productModel = HttpUtil.of(req.getReader()).toModel(ProductModel.class);
        productModel = productService.update(productModel);
        mapper.writeValue(resp.getOutputStream(),productModel);
        System.out.println(productModel);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json"); //
        int id = Integer.parseInt(req.getReader().readLine());
        cartService.delete(id);
        System.out.println("Done delete");
        mapper.writeValue(resp.getOutputStream(),"{}");
        // Convert from type json to Model
        //ProductModel productModel = HttpUtil.of(req.getReader()).toModel(ProductModel.class);

        //productService.delete(productModel.getIds());

        //System.out.println(productModel);
    }
}
