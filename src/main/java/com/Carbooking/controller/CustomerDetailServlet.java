package com.Carbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Carbooking.daoimpl.CarorderDaoImpl;
import com.Carbooking.daoimpl.OrderDetailDaoImpl;
import com.Carbooking.daoimpl.UserDetaildaoImpl;
import com.Carbooking.model.CarOrder;
import com.Carbooking.model.UserDetail;


/**
 * Servlet implementation class CustomerDetailServlet
 */
@WebServlet("/custdetail")
public class CustomerDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);

		HttpSession session=request.getSession();

		int userid=(int)session.getAttribute("userid");
//		session.getAttribute("userid");
//		UserDetail san=new UserDetail();
//		UserDetaildaoImpl dan=new UserDetaildaoImpl();
//		int wallet=dan.updateWallet(san);
//		System.out.println(wallet);
		int price=Integer.parseInt(request.getParameter("advance"));
//		wallet=wallet-price;
//		UserDetail abc=new UserDetail();
//		abc.setWallet(wallet);
//		abc.setUserId(userid);
//		dan.updateWallet(abc);
		String custname=request.getParameter("custname");
		String addres=request.getParameter("address");
		String  city=request.getParameter("city");
		String  pincode=request.getParameter("code");
		
		String address=custname+","+addres+","+city+","+pincode;
		
		int dates=Integer.parseInt(request.getParameter("Expected"));
		
		
		String Carid=(String)session.getAttribute("car_id");
		String carnames=(String)session.getAttribute("carname");
//		session.setAttribute("amount", amount);
		OrderDetailDaoImpl order=new OrderDetailDaoImpl();
		int orderid=order.Findorder();
		CarOrder conf=new CarOrder(orderid,Carid,carnames,dates,address);
		CarorderDaoImpl daon=new CarorderDaoImpl();
		
		daon.insert(conf);
		UserDetail use=new UserDetail(price,userid);
		System.out.println("hi maari");
		UserDetaildaoImpl san=new UserDetaildaoImpl();
//		int wallet=san.wallte(use);
//		price=wallet-price;
	      san.updateWallet(price, userid);
		
	
		response.sendRedirect("ShowProducts.jsp");
		
		
		
		
	}

}
