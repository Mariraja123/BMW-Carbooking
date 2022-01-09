package com.Carbooking.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Carbooking.daoimpl.CarProductDaoImpl;
import com.Carbooking.model.CarProduct;

@WebServlet("/search")

public class SearchCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		try {

			CarProductDaoImpl search = new CarProductDaoImpl();
			String Carname = request.getParameter("car");
			System.out.println(Carname);

			List<CarProduct> searchlist = search.Search(Carname);
			HttpSession session = request.getSession();
			session.setAttribute("carname", searchlist);

			response.sendRedirect("SearchCar.jsp");

	

		} catch (Exception e) {
			System.out.println(e);

		}

		System.out.println("welcome");

	}

}
