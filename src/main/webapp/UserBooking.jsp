<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="com.Carbooking.daoimpl.*" %>
    <%@ page import="java.util.*" %>
    <%@ page import="com.Carbooking.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Booking</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
      margin: 0;
      font-family: Arial;
     background-color:#E7E9BB;

    }

    .topnav {
      overflow: hidden;
      background-color: #333;
    }

    .topnav a {
      float: left;
      display: block;
      color: #f2f2f2;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
      font-size: 17px;
    }

    .active {
      background-color: #04AA6D;
      color: white;
    }

    .topnav .icon {
      display: none;
    }

    .dropdown {
      float: left;
      overflow: hidden;
    }

    .dropdown .dropbtn {
      font-size: 17px;
      border: none;
      outline: none;
      color: white;
      padding: 14px 16px;
      background-color: inherit;
      font-family: inherit;
      margin: 0;
    }

    .dropdown-content {
      display: none;
      position: absolute;
      background-color: #f9f9f9;
      min-width: 160px;
      box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
      z-index: 1;
    }

    .dropdown-content a {
      float: none;
      color: black;
      padding: 12px 16px;
      text-decoration: none;
      display: block;
      text-align: left;
    }

    .topnav a:hover,
    .dropdown:hover .dropbtn {
      background-color: #555;
      color: white;
    }

    .dropdown-content a:hover {
      background-color: #ddd;
      color: black;
    }

    .dropdown:hover .dropdown-content {
      display: block;
    }


    .topnav a.icon {
      float: right;
      display: block;
    }
    .red
    {
   
    margin-top:50px;
    }
 
 </style>
</head>
<body>
 <div class="topnav" id="myTopnav">
    <a href="ShowProducts.jsp" >ShowProduct</a>
   <a href="AddCart.jsp">Cart</a>
     <a href="Login.jsp" style=float:right>Logout</a>
        <a href="Search.jsp">Search</a>
    <a href="#about" data-toggle="modal" data-target="#myModal">Contact</a>
    <a href="Userhistory.jsp" >user</a>
     <a href="UserBooking.jsp" >Booking details</a>
    
       
      </div>
   
   
  </div>
 
  <% 
   UserDetail user=(UserDetail)session.getAttribute("currentUser"); 
   int userid=user.getUserId();
   CarOrder san=new CarOrder(userid);
  
   CarorderDaoImpl dao= new CarorderDaoImpl();
   List<CarOrder> listproduct=dao.userhistory(san);   
	%>
          <h2 class="Userdetail">Booking Details</h2>
          
        
        <div class="red">
        <table>
            <tbody>
                <tr>
                <%int count=0;
                for(CarOrder userdetail: listproduct){
                	%>
                    <td>
                        <table id="carproduct">
                            <tbody>
                                <tr>
                                     
                                    <td class="viewall">
                                        <h3>orderid : <%=userdetail.getOrder_id()%> </h3>
                                       
                                       <h3> Carid : <%=userdetail.getCar_id()%></h3>
                                      
                                       <h3>Carname: <%=userdetail.getCarname()%></h3>
                                        <h3>status:<%= userdetail.getStatus()%></span></h3>
                                    <h3>Date:<%= userdetail.getExpecteddate()%></span></h3>
                                    <h3><span>Address:<%=userdetail.getAddress() %></span></h3>
                                           
                                           
                                            
                                       
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                       <% count ++;
                       if(count==5){ %> 
                    	   </tr>
                    	   
                    	   <tr>              
                     <%count=0; }}%>  
                       
                </tr>
            </tbody>
        </table>
         
        </div>
    </div>
       </div><div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">BME contact</h4>
        </div>
        <div class="modal-body">
        <p> To contact us, please send an email to contact.india@bmw.in or to reach our Customer Interaction Centre, dial toll free number 1800 102 2269 from Monday to Saturday 09:00 hours to 18:30 hours.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
</body>
</html>