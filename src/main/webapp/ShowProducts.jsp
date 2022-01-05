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
width: 250px;
padding:70px;
}

 body {
      margin: 0;
      font-family: Arial;
      background-image:url("https://images.unsplash.com/photo-1560253787-9c3babc1fab2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60");
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
</style>
</head>

<body>
<div class="topnav" id="myTopnav">
    <a href="#home" class="active">ShowProduct</a>
   <a href="AddCart.jsp">Cart</a>
     <a href="Login.jsp" style=float:right>Logout</a>
   
    <a href="#about">About</a>
    <a href="#about">contact</a>
       
      </div>
    </div>
   
   
  </div>
 <form>
<%! CarProductDaoImpl dao=new CarProductDaoImpl();
List<CarProduct> listproduct=dao.showview();

%>

</form>

 <h2 class="CarProducts">Car Products</h2>
        
        <div class="recently added list">
        <table>
            <tbody>
                <tr>
                <%int count=0;
                for(CarProduct carProduct: listproduct){
                	%>
                    <td>
                        <table id="carproduct">
                            <tbody>
                                <tr>
                                    <td><img src=<%=carProduct.getImages() %> alt="maari"></td>    
                                    <td class="car">
                                        <span>carid : <%=carProduct.getCar_id()%> </span><br>
                                        <span>carname : <%=carProduct.getCar_name()%>  </span><br>
                                        <span>carmodel : <%=carProduct.getCarModel()%> </span><br>
                                        <span>cartype : <%=carProduct.getCarType() %> </span><br>
                                        <span>fueltype: <%=carProduct.getFuelType() %></span><br>
                                       <span> price:<%=carProduct.getPrice() %>"</span>
                                       <a href="SelectCar.jsp?car_id=<%=carProduct.getCar_id() %>"><button>view</button></a>
                                      
                                        
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                       <% count ++;
                       if(count==3){ %> 
                    	   </tr>
                    	   <tr>              
                     <%count=0; }}%>  
                       
                </tr>
            </tbody>
        </table>
         
        </div>
    </div>
   </div>

</body>
</html>