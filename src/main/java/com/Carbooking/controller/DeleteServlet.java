package com.Carbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Carbooking.daoimpl.CarProductDaoImpl;
import com.Carbooking.model.CarProduct;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/deletecar")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String carid=request.getParameter("carid");
		CarProduct delete=new CarProduct(carid);
		CarProductDaoImpl adddao=new CarProductDaoImpl();
		adddao.delete(delete);
		response.sendRedirect("Admin.jsp");
	}

}
