package com.Carbooking.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Carbooking.dao.UserDetailDao;
import com.Carbooking.daoimpl.UserDetaildaoImpl;
import com.Carbooking.model.UserDetail;
@WebServlet("/loginval")
public class LoginServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String username=req.getParameter("uname");
		String password=req.getParameter("upass");
		System.out.println(username+password);
		UserDetail ud=new UserDetail(username, password);
		UserDetaildaoImpl uddi=new UserDetaildaoImpl();
		String rs;
		try {
			rs = uddi.loginval(username, password);
			System.out.println(rs);
			if(rs != null) {
				UserDetail ud1 = new UserDetail(username);
				UserDetaildaoImpl userDetaildaoImpl = new UserDetaildaoImpl();
				int userid = userDetaildaoImpl.username(ud1);
				session.setAttribute("userid",userid );
				if(rs.equals("user")) {
				
					resp.sendRedirect("ShowProducts.jsp");
				}else if(rs.equals("admin")) {
					UserDetail ud2 = new UserDetail(username);
					UserDetaildaoImpl userDetaildaoImpl2 = new UserDetaildaoImpl();
					int userid2 = userDetaildaoImpl.username(ud1);
					session.setAttribute("adminid",userid);
					resp.sendRedirect("Admin.jsp");
				}
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
//		if(rs.equals("admin")) {
//			System.out.println("admin");
//			resp.sendRedirect("Main.jsp");
//		}
//		else {
//			resp.sendRedirect("ShowProducts.jsp");
//		}
		
	}
}
