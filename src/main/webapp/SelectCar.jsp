<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.Carbooking.daoimpl.CarProductDaoImpl" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.Carbooking.model.CarProduct" %>
      <%@ page import="com.Carbooking.model.Pricedetail" %>
    <%@ page import ="com.Carbooking.daoimpl.PriceDetailDaoImpl" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Car</title>

<style>
img{
width: 350px;
padding:130px;
}
 body {
      margin: 0;
      font-family: Arial;
  background-color:#E7E9BB;
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
  
    .car
    {
      position:absolute;
      left:750px;
      top:420px;
    }
    .one
    {
    margin-left:1200px;
    }
   img{
width: 500px;
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 5px;

}
img:hover {
  box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
}
.cars
{
position:absolute;
margin-left:180px;
margin-top:100px;
}
.style  {
    background-color: red;
}

.style:focus {     
    background-color:yellow;    
}
span
{
font-size:20px;
 font-weight: bold;
  color: navy;}
  .list
  {
  padding:50px;}
</style>
</head>
<body>
<div class="topnav" id="myTopnav">
    <a href="#home" class="active">ShowProduct</a>
   <a href="AddCart.jsp">Cart</a>
     <a href="Login.jsp" style=float:right>Logout</a>
        <a href="Search.jsp">Search</a>
    <a href="#about">Contact</a>
    <a href="Userhistory.jsp">user</a>
     <a href="updatewallet.jsp">Recharge Wallet</a>
   
    
       
      </div>
   
   
  </div>

 <form action="cart" method="post">

<%
CarProductDaoImpl dao=new CarProductDaoImpl();
String carid = request.getParameter("car_id");
CarProduct car = new CarProduct(carid);
CarProduct carProduct = dao.selectproduct(car);

PriceDetailDaoImpl dan=new PriceDetailDaoImpl();
String carids = request.getParameter("car_id");
Pricedetail cars = new Pricedetail(carids);
Pricedetail price = dan.selectproduct(cars);

%>


 <h2 class="CarProducts">Car Products</h2>
 <div class="one">
 
 <a href="ShowProducts.jsp"><button type="button">Back</button> </a>
 </div>
        
        <div class="list">
        <table>
            <tbody>
                <tr>
               
                    <td>
                        <table id="carproduct">
                            <tbody>
                                <tr>
                                    <td><img src="<%=carProduct.getCar_name()%>.jpg" alt="maari"></td>    
                                    <td class="cars">
                                    
                                        <span>carid : <%=carProduct.getCar_id()%> </span><br>
                                        <span>carname : <%=carProduct.getCar_name()%>  </span><br>
                                        <span>carmodel : <%=carProduct.getCarModel()%> </span><br>
                                        <span>cartype : Rs.<%=carProduct.getCarType() %> </span><br>
                                        <span>fueltype: <%=carProduct.getFuelType() %></span><br>
                                         
                                          <%session.setAttribute("car_id", carProduct.getCar_id()); %>
                                         <a href="confirmcar.jsp?car_id=<%=carProduct.getCar_id() %>">  <br><button type="submit" style=margin-left:300px; class="style" >Add to cart</button></a>
                                          
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
        <div class="two">
        <table>
            <tbody>
                <tr>
               
                    <td>
                        <table id="carsecond">
                            <tbody>
                                <tr>
                                    
                                    <td class="car">
                                    
                                        <span >showroomprice : <%=price.getExshowroomprice()%> </span><br>
                                        <span>roadtax : <%=price.getRoadtax()%> </span><br>
                                        <span>insrance:<%=price.getInsurance() %></span><br>
                                        <span>onroadprice : <%=price.getOnroadprice() %> </span><br>
                                          <%session.setAttribute("price", price.getOnroadprice()); %>
                                       
                                        <span>
                                 
                                          
                                          
                                         </span>
                                        
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

</body>
</html>