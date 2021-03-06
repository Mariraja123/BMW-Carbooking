package com.Carbooking.daoimpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Carbooking.model.CarProduct;
import com.Carbooking.model.UserDetail;
import com.connection.Connectionutil;


public class CarProductDaoImpl {

	public  static List<CarProduct> showview() 
	{
		List<CarProduct> productsList=new ArrayList<CarProduct>();
		
		String showQuery="select * from Car_details";
		Connection con;
		try {
			con = Connectionutil.getDBconnection();
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(showQuery);
			while(rs.next())
			{
				
				CarProduct product=new CarProduct(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),Integer.parseInt(rs.getString(6)));
				productsList.add(product);
				
			}
			
			
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return productsList;
	}
//	public static int findProductId(Carproduct product)
//	{
//		String findUserID="select product_name from Carproduct where product_id= '"+Carproduct.getProduct_name()+"'";
//		Connection con=Connectionutil.getDBconnection();
//		Statement stmt=null;
//		int productId=0;
//		try {
//			stmt = con.createStatement();
//			ResultSet rs=stmt.executeQuery(findUserID);
//			if(rs.next())
//			{
//			productId=rs.getInt(1);
//			}
//			
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return productId;
//		
//	}
//	
     public  void update(CarProduct obj1) 
     {
   	  String update="update car_details set fueltype=?,cartype=?,car_model=?,price=? where Car_id=? ";
   	  Connection Con;
	try {
		Con = Connectionutil.getDBconnection();
		PreparedStatement stmt=Con.prepareStatement(update);
	   	stmt.setString(1, obj1.getFuelType());
	   	stmt.setString(2, obj1.getCarType());
	   	stmt.setString(3, obj1.getCarModel());
	   	stmt.setLong(4, obj1.getPrice());
	   	  stmt.setString(5, obj1.getCar_id());
	   	  int i=stmt.executeUpdate();
	   	 
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   	  
     }
     public  void insert(CarProduct obj1) 
     {
    	 String insert="insert into car_details (car_id,car_name,fueltype,cartype,car_model,price)values(?,?,?,?,?,?)";
    	 Connection Con;
		try {
			Con = Connectionutil.getDBconnection();
			PreparedStatement stmt=Con.prepareStatement(insert);
	    	 stmt.setString(1, obj1.getCar_id());
	    	 stmt.setString(2, obj1.getCar_name());
	    	 stmt.setString(3, obj1.getFuelType());
	    	 stmt.setString(4, obj1.getCarModel());
	    	 stmt.setString(5, obj1.getCarType());
	    	 stmt.setLong(6, obj1.getPrice());
	    	 int i=stmt.executeUpdate();
	    	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	 
     }
     public  void delete(CarProduct obj1) 
     {
    	 String delete="delete from car_details where car_id=?";
    	 Connection Con;
		try {
			Con = Connectionutil.getDBconnection();
			 PreparedStatement stmt1=Con.prepareStatement(delete);
	    	 stmt1.setString(1, obj1.getCar_id());
	    	 int i=stmt1.executeUpdate();
	    	 
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
     }

    	 public  static CarProduct selectproduct(CarProduct obj) throws ClassNotFoundException, SQLException
    	 {
    		
    		 CarProduct cars=null;
    		 String search="Select * from car_details where car_id=?";
        	 Connection Con=Connectionutil.getDBconnection();
        	 PreparedStatement stmt1=Con.prepareStatement(search);
        	
        	stmt1.setString(1, obj.getCar_id());
        	 ResultSet rs=stmt1.executeQuery();
        	 
        	 
        	 while(rs.next())
        	 {
//        		 System.out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6));
        		 cars =new CarProduct(rs.getString(1),rs.getString(2),rs.getString(3) ,rs.getString(4), rs.getString(5),rs.getInt(6),rs.getString(7));
        		 return cars;
        	 }
   return cars;
    	 
   
     }
    	   public static String Searchcar(String obj3) 
    	     {
    	    	 String search="Select car_name from Car_details where car_Id=?";
    	    	 Connection Con;
    	    	
    	    	 String carname=null;
    			try {
    				 Con = Connectionutil.getDBconnection();
    				 PreparedStatement stmt=Con.prepareStatement(search);
    			    	stmt.setString(1, obj3);
    			    
    			    	 ResultSet rs=stmt.executeQuery();
    			    	
    			    	 if(rs.next())
    			    	 {
    			             carname=rs.getString(1);
    			             
    			    	 }
    			    	 
    			} catch (ClassNotFoundException e) {
    				// TODO Auto-generated catch block
    				e.printStackTrace();
    			} catch (SQLException e) {
    				// TODO Auto-generated catch block
    				e.printStackTrace();
    			}
    			return carname;
    	    	
    	     }
    	   
    	   public List<CarProduct> Search( String Carname) throws ClassNotFoundException, SQLException 
    		{
    				
    					List<CarProduct> searchcar=new ArrayList<CarProduct>();
    					CarProduct car=null;
    					
    					String showQuery="select car_name,fueltype,cartype from car_details where car_name=?";
    					 Connection Con=Connectionutil.getDBconnection();
    					 PreparedStatement ps =Con.prepareStatement(showQuery);
    					 ps.setString(1, Carname);
    					 ResultSet rs=ps.executeQuery();
    					

    					while(rs.next()) 
    					{
    						
    						
    				    car=new  CarProduct(rs.getString(1),rs.getString(2),rs.getString(3));
    				    searchcar.add(car);
    				  
    					}
    					return searchcar;        
    		}
    	   

}
