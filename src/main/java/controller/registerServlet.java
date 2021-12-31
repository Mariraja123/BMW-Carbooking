package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.CarbookingDao.Impl.Userdetaildao;
import com.Carbookingpojo.UserDetail;
@WebServlet("/sample1")
public class registerServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("hello1");
		String firstName=req.getParameter("first_name");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		Long phone=Long.parseLong(req.getParameter("number"));
		
		UserDetail ud=new UserDetail(firstName,email,password,phone);
		Userdetaildao udd=new Userdetaildao();
		System.out.println("hello");
		try {
			udd.insert(ud);
			resp.sendRedirect("NewFile.jsp");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
