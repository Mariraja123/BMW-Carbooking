<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.Carbooking.daoimpl.CarProductDaoImpl" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.Carbooking.model.CarProduct" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show products</title>
<style>
img{
width: 350px;
padding:130px;
}
<style>

img{
width: 250px;
padding:70px;
}


 body {
      margin: 0;
      font-family: Arial;
      
      background-size:cover;
      height:300px;
    

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
      .one
   {
   position:absolute;
   left:1200px;
   width:80px;
   font-size:30px;
   background-color:red;
   }
</style>

</head>
<body>
<div class="topnav" id="myTopnav">
    <a href="#home" class="active">ShowProduct</a>
   <a href="AddCart.jsp">Cart</a>
     <a href="Login.jsp" style=float:right>Logout</a>
        <a href="Search.jsp">Search</a>
    <a href="#about">About</a>
    <a href="Userhistory.jsp">user</a>
    
       
      </div>
   
    </div>
   
   
 <div class="one">
 <a href="ShowProducts.jsp">Back</a>
 </div>
 <form  method="post">
<% CarProductDaoImpl dao=new CarProductDaoImpl();
String carid =session.getAttribute("car_id").toString();

CarProduct car = new CarProduct(carid);
CarProduct carProduct = dao.selectproduct(car);
%>


 <h2 class="CarProducts">Car Products</h2>
        
        <div class="recently added list">
        <table>
            <tbody>
                <tr>
               
                    <td>
                        <table id="carproduct">
                            <tbody>
                                <tr>
                                    <td><img src="<%=carProduct.getCar_name() %>.jpg" alt="maari"></td>    
                                    <td class="car">
                                    
                                        <span>carid : <%=carProduct.getCar_id()%> </span><br>
                                        <span>carname : <%=carProduct.getCar_name()%>  </span><br>
                                        <span>carmodel : <%=carProduct.getCarModel()%> </span><br>
                                        <span>cartype : Rs.<%=carProduct.getCarType() %> </span><br>
                                        <span>fueltype: <%=carProduct.getFuelType() %></span><br>
                                          <span>price:<%= session.getAttribute("price") %>
                                       <%session.setAttribute("carname", carProduct.getCar_name()); %>
                                      <button> <a href="CustomerDetail.jsp">confirm booking </a></button>
                                       <button> <a href="ShowProducts.jsp">Cancel booking</a></button>
                                          
                                         </form></span>
                                        
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                       
                  
                       
                </tr>
            </tbody>
        </table>
         
        </div>
    </div>
   </div>

</body>
</html>