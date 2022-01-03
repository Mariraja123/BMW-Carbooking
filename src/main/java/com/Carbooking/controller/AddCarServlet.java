package com.Carbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Carbooking.daoimpl.CarProductDaoImpl;
import com.Carbooking.model.CarProduct;


@WebServlet("/addcar")
public class AddCarServlet extends HttpServlet {

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String carid=request.getParameter("carid");
		String carname=request.getParameter("carname");
		String fueltype=request.getParameter("fueltype");
		String cartype=request.getParameter("cartype");
		String carmodel=request.getParameter("carmodel");
		Long price=Long.parseLong(request.getParameter("price"));
		CarProduct add=new CarProduct(carid,carname,fueltype,cartype,carmodel,price);
		CarProductDaoImpl adddao=new CarProductDaoImpl();
		adddao.insert(add);
		response.sendRedirect("Main.jsp");
	}

}
