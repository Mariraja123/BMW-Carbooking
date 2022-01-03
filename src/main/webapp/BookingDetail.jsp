<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.Carbooking.daoimpl.CarProductDaoImpl" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.Carbooking.model.CarOrder" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show products</title>
</head>
<body>
 <form>
<% CarProductDaoImpl dao=new CarProductDaoImpl();
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
                        <table id="pets">
                            <tbody>
                                <tr>
                                    <td><img src="/bmw/src/main/webapp/WEB-INF/images/X5Model.jpg" alt="maari"></td>    
                                    <td class="petdetails">
                                        <span>Type : <%=carProduct.getCar_id()%> </span><br>
                                        <span>Name : <%=carProduct.getCar_name()%>  </span><br>
                                        <span>Color : <%=carProduct.getCarModel()%> </span><br>
                                        <span>price : Rs.<%=carProduct.getCarType() %> </span><br>
                                        <span>Qty: <%=carProduct.getFuelType() %></span><br>
                                        <%=carProduct.getPrice() %>"><button>view</button></a>
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