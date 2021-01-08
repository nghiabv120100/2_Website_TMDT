package com.tmdt.controller.web;
import com.tmdt.model.AccountModel;
import com.tmdt.service.AccountService;
import com.tmdt.utils.FormUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/register"})
public class RegisterController extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    int RoleId=0;

    public RegisterController() {   }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

		String username = request.getParameter("username");
		String email = request.getParameter("email");
 		String password = request.getParameter("password");
        String phonenumber = request.getParameter("phonenumber");
        String address =request.getParameter("phonenumber");
        String avatar =request.getParameter("avatar");
		AccountModel accountModel = new AccountModel();
		accountModel.setUsername(username);
		accountModel.setEmail(email);
 		accountModel.setPassword(password);
 		accountModel.setPhonenumber(phonenumber);
 		accountModel.setAddress(address);
 		accountModel.setAvatar(avatar);

        RequestDispatcher rd = request.getRequestDispatcher("views/web/register.jsp");
        rd.forward(request, response);
    }



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
		AccountModel accountModel = FormUtil.toModel(AccountModel.class, request);
 		String username = request.getParameter("username");
 		String email = request.getParameter("email");
 		String password = request.getParameter("password");
        String phonenumber = request.getParameter("phonenumber");
        String address =request.getParameter("address");
        String avatar =request.getParameter("avatar");

        RequestDispatcher rd = request.getRequestDispatcher("views/web/index.jsp");
        rd.forward(request, response);
    }
}
