package com.Carbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Carbooking.daoimpl.UserDetaildaoImpl;
import com.Carbooking.model.UserDetail;
@WebServlet("/wallet")
public class walletServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		Long wallet=Long.parseLong(request.getParameter("amount"));
		String email=request.getParameter("email");
		UserDetail use=new UserDetail(wallet,email);
		UserDetaildaoImpl dao=new UserDetaildaoImpl();
		dao.updatewallet(use);
	}

}
