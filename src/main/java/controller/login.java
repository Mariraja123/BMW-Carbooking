package controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.CarbookingDao.Impl.Userdetaildao;
import com.CarbookingDao1.UserDetailDao;
import com.Carbookingpojo.UserDetail;

@WebServlet("/loginval")
public class login extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//	doGet(request, response);
		
	String username=request.getParameter("inpem");
	   String password=request.getParameter("inppass");
	   System.out.println(request.getParameter("inpem"));
	   UserDetail obj1 = new UserDetail(username,password);
	   System.out.println(obj1.getCpassword() + obj1.getEmail());
	 
	   
	  
	   Userdetaildao cust = new Userdetaildao();
	  
	   try {
		String user_role=cust.validate(obj1);
		System.out.println(user_role);
		
		if(user_role.equals("admin")) {
			response.sendRedirect("Main.jsp");
		}
		else
			response.sendRedirect("login.jsp");
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}


	}

}
