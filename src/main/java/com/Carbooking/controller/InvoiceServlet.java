package com.Carbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.Carbooking.daoimpl.InvoiceDaoImpl;
import com.Carbooking.model.Invoice;
import com.Carbooking.model.UserDetail;

/**
 * Servlet implementation class InvoiceServlet
 */
@WebServlet("/invoice")
public class InvoiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		System.out.println("pothiinvoice");
		HttpSession session=request.getSession();
		 UserDetail user=(UserDetail)session.getAttribute("currentUser");
		int userid=user.getUserId();
		
		System.out.println("hel2"+userid);
		String carid=(session.getAttribute("car_id").toString());
		System.out.println(carid);
		int price=Integer.parseInt(session.getAttribute("price").toString());
		System.out.println(price);
		String Carname=session.getAttribute("carname").toString();
		System.out.println(Carname);
		Invoice add=new Invoice(carid,userid,price,Carname);
		InvoiceDaoImpl dao=new InvoiceDaoImpl();
		dao.insert(add);
		
		response.sendRedirect("Invoice.jsp");
	}
}
