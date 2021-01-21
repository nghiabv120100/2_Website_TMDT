package com.tmdt.controller.admin;

import com.tmdt.model.BrandModel;
import com.tmdt.service.BrandService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet(urlPatterns = {"/admin-brand-list"})
public class BrandController extends HttpServlet {
    @Inject
    BrandService brandService;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type= req.getParameter("type");
        if (type.equals("list")) {
            List<BrandModel> brands = brandService.findAll();
            req.setAttribute("brands", brands);
            RequestDispatcher rd = req.getRequestDispatcher("views/admin/view/list-brand.jsp");
            rd.forward(req, resp);
        } else if (type.equals("add")) {
            RequestDispatcher rd = req.getRequestDispatcher("views/admin/view/add-brand.jsp");
            rd.forward(req, resp);
        } else if (type.equals("edit")) {
            int id = Integer.parseInt(req.getParameter("id"));
            BrandModel brandModel=  brandService.findOne(id);
            req.setAttribute("brand",brandModel);
            RequestDispatcher rd = req.getRequestDispatcher("views/admin/view/edit-brand.jsp");
            rd.forward(req, resp);
        }

    }
}
