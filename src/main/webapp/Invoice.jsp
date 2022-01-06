<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.Carbooking.daoimpl.InvoiceDaoImpl" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.Carbooking.model.Invoice" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>


<body>
 

        
        <div class="recently added list">
        <table>
            <tbody>
                <tr>
                <%int count=0;
               for(Invoice order:listproduct){
                	%>
                    <td>
                        <table id="carproduct" border=1 >
                            <tbody>
                                <tr>
                                   
                                    <td class="car">
                                         <span>invoiceid: <%= order.getInvoice_id() %></span>
                                        <span> orderid : <%= order.getOrder_id() %> </span><br>
                                        
                                        <span>userid : <%=order.getUser_id()%>  </span><br>
                                        <span>carmodel : <%=order.getPrice()%> </span><br>
                                        <span>price : <%=order.getCar_name() %> </span><br>
                                      
                                      
                                      
                                        
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

   
</body>
</html> --%>