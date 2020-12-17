package com.tmdt.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tmdt.model.ProductModel;
import com.tmdt.service.ProductService;
import com.tmdt.utils.HttpUtil;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/api-admin-product"})
public class ProductAPI extends HttpServlet {
    @Inject
    private ProductService productService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json"); //

/*
        DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
        ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);

        boolean isMultipart = ServletFileUpload.isMultipartContent(req);

        ServletContext context = req.getServletContext();
        final String dir = context.getRealPath("image");
*/


        // Convert from type json to Model
        ProductModel productModel = HttpUtil.of(req.getReader()).toModel(ProductModel.class);

/*        try {

            List<FileItem> items = servletFileUpload.parseRequest(req);
            System.out.println("f");
            for (FileItem item : items) {
               if (item.getFieldName().equals("image")) {
                   File file = new File(dir + File.separator + productModel.getImage());
                   System.out.println(dir);
                   item.write(file);
                }
            }
        } catch (FileUploadException e) {
            e.printStackTrace();
            System.out.println(e);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e);
            System.out.println("Two");
        }*/

        productModel = productService.save(productModel);
        mapper.writeValue(resp.getOutputStream(),productModel);

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
        productService.delete(id);
        System.out.println("Done delete");
        // Convert from type json to Model
        //ProductModel productModel = HttpUtil.of(req.getReader()).toModel(ProductModel.class);

        //productService.delete(productModel.getIds());
        //mapper.writeValue(resp.getOutputStream(),"{}");
        //System.out.println(productModel);
    }
}
