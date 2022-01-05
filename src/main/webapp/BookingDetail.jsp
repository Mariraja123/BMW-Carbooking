<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.Carbooking.daoimpl.CarorderDaoImpl" %>
    <%@ page import="java.util.*" %>
    <%@ page import="com.Carbooking.model.CarOrder" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show products</title>
</head>
<body>





<% CarorderDaoImpl dao=new CarorderDaoImpl();
List <CarOrder> allbook;
allbook=dao.allbook();
%>





 <h2 class="CarProducts">Car Products</h2>
        
        <div class="recently added list">
        <table>
            <tbody>
                <tr>
                <%int count=0;
                for(CarOrder carProduct1: allbook){
                	%>
                    <td>
                        <table border=1>
                            <tbody>
                                <tr>
                                    
                                    <td class="order detail">
                                        <span>order : <%=carProduct1.getOrder_id()%> </span><br>
                                        <span>carid : <%=carProduct1.getCar_id()%>  </span><br>
                                        <span>carname : <%=carProduct1.getCarname()%> </span><br>
                                      
                                        <span>date: <%=carProduct1.getStatus() %></span><br>
                                       
                                       <span>status <%=carProduct1.getAddress() %></span>
                                       
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
   </div>

</body>
</html>