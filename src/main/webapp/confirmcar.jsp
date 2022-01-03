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
span{
position : relative;
top:280px;
left: -400px;

}
</style>
</head>
<body>
 <form action="cart" method="post">
<%! CarProductDaoImpl dao=new CarProductDaoImpl();


%>
<%
String carid = request.getParameter("car_id");
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
                                    <td><img src=<%=carProduct.getImages() %> alt="maari"></td>    
                                    <td class="car">
                                    
                                        <span>carid : <%=carProduct.getCar_id()%> </span><br>
                                        <span>carname : <%=carProduct.getCar_name()%>  </span><br>
                                        <span>carmodel : <%=carProduct.getCarModel()%> </span><br>
                                        <span>cartype : Rs.<%=carProduct.getCarType() %> </span><br>
                                        <span>fueltype: <%=carProduct.getFuelType() %></span><br>
                                          <span>Price:<%=carProduct.getPrice() %>"> </span>
                                          <%session.setAttribute("price", carProduct.getPrice()); %>
                                          <%session.setAttribute("car_id", carProduct.getCar_id()); %>
                                        <button type="submit">Confirm booking</button>
                                        <button>Cancel booking</button>
                                          
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