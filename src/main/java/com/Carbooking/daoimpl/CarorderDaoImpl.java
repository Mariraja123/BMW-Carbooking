package com.Carbooking.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.Carbooking.model.CarOrder;
import com.Carbooking.model.UserDetail;
import com.connection.Connectionutil;

public class CarorderDaoImpl {

	public static void insert(CarOrder obj)
	{
//		String update="update User_details set userwallet=(select userwallet from user_details where user_id=?)-? where user_id=?)";
		String insert="insert into car_orders(Order_id,Car_id,Car_name,Expecteddate,address) values(?,?,?,sysdate+?,?)";
		  Connection Con;
		 
		  
		try {
//			int amount1=(int) session.getAttribute("amount");
			Con = Connectionutil.getDBconnection();
			PreparedStatement stmt=Con.prepareStatement(insert);
			stmt.setInt(1, obj.getOrder_id());
			stmt.setString(2, obj.getCar_id());		
			stmt.setString(3, obj.getCarname());
		
			
//			stmt.setString(1, obj.getStatus());
//			stmt.setInt(4, new java.sql.Date (obj.getExpecteddate().getTime()));
			stmt.setInt(4, obj.getExpecteddate());
			stmt.setString(5, obj.getAddress());
//			stmt.setInt(6, amount1);
			int i=stmt.executeUpdate();
			System.out.println(i+"booked succesfully");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public static List<CarOrder> allbook(CarOrder obj1) throws ClassNotFoundException, SQLException {
		List<CarOrder> viewbooking=new ArrayList<CarOrder>();
		String allbook="Select * from Car_orders";
		Connection Con = Connectionutil.getDBconnection();
		PreparedStatement stmt=Con.prepareStatement(allbook);
		ResultSet rs=stmt.executeQuery();
		while(rs.next())
		{
		     CarOrder details=new CarOrder(rs.getInt(1),rs.getString(2),rs.getString(3),(rs.getInt(4)),rs.getString(5));
		     viewbooking.add(details);
		}
		return viewbooking;
	}
	public static void update(CarOrder obj) throws ClassNotFoundException, SQLException {
		String log1 = "update Car_orders set status=? where order_id=?";
		Connection Con = Connectionutil.getDBconnection();
		PreparedStatement stmt = Con.prepareStatement(log1);
		stmt.setString(1, obj.getStatus());
		stmt.setInt(2, obj.getOrder_id());
		int i = stmt.executeUpdate();
		System.out.println(i + "updated");

	}
	
}
