package com.tmdt.controller.admin;


import com.tmdt.model.AccountModel;
<<<<<<< HEAD
import com.tmdt.model.DetailCategoryModel;
import com.tmdt.model.ProductModel;
=======
>>>>>>> 47ad7b79384ab300c94883fb9d527806c0adb05c
import com.tmdt.service.AccountService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

<<<<<<< HEAD
@WebServlet(urlPatterns = {"/admin-user-list"})
=======
@WebServlet(urlPatterns = "/admin-user-list")
>>>>>>> 47ad7b79384ab300c94883fb9d527806c0adb05c
public class AccountController extends HttpServlet {

    @Inject
    private AccountService accountService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
<<<<<<< HEAD
        String type= req.getParameter("type");
        String url ="";
        //ProductService productService =new ProductService();
        if ( type.equals("list")){
            List<AccountModel> accountModelList = accountService.findAll();
            req.setAttribute("userList",accountModelList);
            url="views/admin/view/list-user.jsp";
        }
        else if(type.equals("add")){
            url="views/admin/view/add-user.jsp";
        }
        else if(type.equals("edit")){
                String id = req.getParameter("id");
                AccountModel account = accountService.findOne(Integer.parseInt(id));
                req.setAttribute("user", account);
            url ="views/admin/view/edit-user.jsp";
        }
        RequestDispatcher rd = req.getRequestDispatcher(url);
        rd.forward(req,resp);
=======
        List<AccountModel> accountModelList = accountService.findAll();
        req.setAttribute("userList",accountModelList);
        RequestDispatcher rd = req.getRequestDispatcher("views/admin/view/list-user.jsp");
        rd.forward(req,resp);

>>>>>>> 47ad7b79384ab300c94883fb9d527806c0adb05c
    }
}
