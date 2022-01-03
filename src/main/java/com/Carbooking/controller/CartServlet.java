package com.Carbooking.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Carbooking.daoimpl.OrderDetailDaoImpl;
import com.Carbooking.model.OrderDetail;
@WebServlet("/cart")
public class CartServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=req.getSession();
		System.out.println("maari1");
		int userid=Integer.parseInt(session.getAttribute("userid").toString());
		System.out.println(userid);
		String carid=session.getAttribute("car_id").toString();
		System.out.println(carid);
		int price=Integer.parseInt(session.getAttribute("price").toString());
		System.out.println(price);
		OrderDetail obj=new OrderDetail(userid,carid,price);
		OrderDetailDaoImpl orderdao=new OrderDetailDaoImpl();
		System.out.println("maari5");
		try {
			orderdao.insert(obj);
			resp.sendRedirect("confirmcar.jsp");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
