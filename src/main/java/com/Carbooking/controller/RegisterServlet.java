package com.Carbooking.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Carbooking.daoimpl.UserDetaildaoImpl;
import com.Carbooking.model.UserDetail;
@WebServlet("/sample1")
public class RegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String firstName=req.getParameter("first_name");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		Long phone=Long.parseLong(req.getParameter("number"));
		
		UserDetail ud=new UserDetail(firstName,email,password,phone);
		UserDetaildaoImpl udd=new UserDetaildaoImpl();
		
		try {
			udd.insert(ud);
			resp.sendRedirect("Login.jsp");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
