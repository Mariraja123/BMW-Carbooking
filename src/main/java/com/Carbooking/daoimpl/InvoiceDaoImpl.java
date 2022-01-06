package com.Carbooking.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.Carbooking.model.Invoice;
import com.connection.Connectionutil;

public class InvoiceDaoImpl {
	public void insert (Invoice obj)
	{
		String insert="insert into invoice(car_id,user_id,price,car_name)values(?,?,?,?)";
		Connection Con;
		try {
			Con = Connectionutil.getDBconnection();
			PreparedStatement stmt=Con.prepareStatement(insert);
			stmt.setString(1, obj.getCar_id());
			stmt.setInt(2, obj.getUser_id());
			stmt.setInt(3, obj.getPrice());
			stmt.setString(4, obj.getCar_name());
			
			
			int i=stmt.executeUpdate();
			System.out.println(i+"saved on cart");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	    }
}

