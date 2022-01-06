package com.Carbooking.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



import com.Carbooking.model.*;

import com.connection.*;

public class UserDetaildaoImpl {

	public  void insert(UserDetail obj) throws ClassNotFoundException, SQLException {
		String insert = "insert into User_details(First_name,Email,cpassword,Phone) values(?,?,?,?)";
		Connection Con = Connectionutil.getDBconnection();
		PreparedStatement stmt = Con.prepareStatement(insert);
		stmt.setString(1, obj.getFirst_name());
		stmt.setString(2, obj.getCpassword());
		stmt.setString(3, obj.getEmail());
		stmt.setLong(4, obj.getPhoneno());

		int i = stmt.executeUpdate();
		System.out.println(i);
	}

//	public  String validate(String email,String password)  {
//		
//       ResultSet rs=null;
//		
//			System.out.println("hello");
//		Connection Con;
//		try {
//			Con = Connectionutil.getDBconnection();
//			
//			String query="select usertype from User_details where email=? and cpassword=?";
//			PreparedStatement pstmt=Con.prepareStatement(query);
//			pstmt.setString(1, email);
//			pstmt.setString(2, password);
//			
//			rs=pstmt.executeQuery(query);
//			rs.next();
//			return rs.getString(1);
//		} catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return null;
//				
//	}
	
	public UserDetail loginval(String email,String password) throws ClassNotFoundException, SQLException {
		Connection con = Connectionutil.getDBconnection();
		System.out.println(email+password);
		String query="select * from user_details where email = ? and cpassword = ?";
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setString(1, email);
		pstmt.setString(2, password);
		
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			return new UserDetail(rs.getInt(5),rs.getString(1),rs.getString(2),rs.getString(3),rs.getLong(4),rs.getString(6),rs.getInt(7));
		}
		return null;
	}



	public  void update(UserDetail obj) throws ClassNotFoundException, SQLException {
		String log1 = "update user_details set cpassword=? where email=?";
		Connection Con = Connectionutil.getDBconnection();
		PreparedStatement stmt = Con.prepareStatement(log1);
		stmt.setString(1, obj.getCpassword());
		stmt.setString(2, obj.getEmail());
		int i = stmt.executeUpdate();
		System.out.println(i + "updated");

	}

	public static void delete(UserDetail obj1) throws ClassNotFoundException, SQLException {
		String log2 = "delete from user_details where user_id=?";
		Connection Con = Connectionutil.getDBconnection();
		PreparedStatement stmt = Con.prepareStatement(log2);
		stmt.setInt(1, obj1.getUserId());
		int i = stmt.executeUpdate();
		System.out.println(i + "deleted");
	}
	public static List<UserDetail> alluser() throws ClassNotFoundException, SQLException {
		List<UserDetail> veiwall=new ArrayList<UserDetail>();
		String alluser="Select * from user_details";
		Connection Con = Connectionutil.getDBconnection();
		PreparedStatement stmt=Con.prepareStatement(alluser);
		ResultSet rs=stmt.executeQuery();
		while(rs.next())
		{
		     UserDetail detail=new UserDetail(rs.getString(1),rs.getString(2),rs.getString(3),rs.getLong(4));
		     veiwall.add(detail);
		}
		return veiwall;
	}
//	public  int wallte(UserDetail obj)
//	{
//		String query="select userwallet from user_details where user_id in ?";
//		int wallet=0;
//		try {
//			Connection Con = Connectionutil.getDBconnection();
//			PreparedStatement stmt=Con.prepareStatement(query);
//			stmt.setInt(1, obj.getUserId());
//			ResultSet rs=stmt.executeQuery();
//			System.out.println(obj.getUserId());
//			while(rs.next())
//			{
//				 wallet=rs.getInt(1);
//				 System.out.println(wallet);
//			}
//		} catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return wallet;
//		
//	} 

	public void updateWallet(int wallet,int userid) {
		// TODO Auto-generated method stub
		String query="update user_details set userwallet =userwallet - ? where user_id = ?";
		
		try {
			Connection con=Connectionutil.getDBconnection();
			int i=0;
			System.out.println("hi here");
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setLong(1,wallet);
			pstmt.setInt(2, userid);
			i=pstmt.executeUpdate();
			System.out.println(i);
			System.out.println(i+" row updated");
			
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	   public  int username(UserDetail obj3) 
	     {
	    	 String search="Select user_id from user_details where email=?";
	    	 Connection Con;
	    	
	    	 int userid=0;
			try {
				 Con = Connectionutil.getDBconnection();
				 PreparedStatement stmt=Con.prepareStatement(search);
			    	stmt.setString(1, obj3.getEmail());
			    
			    	 ResultSet rs=stmt.executeQuery();
			    	
			    	 if(rs.next())
			    	 {
			             userid=rs.getInt(1);
			    	 }
			    	 
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return userid;
	    	
	     }
	}
