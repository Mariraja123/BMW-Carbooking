<%@page import="org.apache.catalina.connector.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.Carbooking.daoimpl.OrderDetailDaoImpl" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.Carbooking.model.OrderDetail" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show products</title>

 <form>
<% OrderDetailDaoImpl dao=new OrderDetailDaoImpl();
int user =Integer.parseInt(session.getAttribute("userid").toString());
System.out.println(user);
OrderDetail ord=new OrderDetail();
ord.setUserId(user);
List<OrderDetail> listproduct=dao.view(ord);


%>

</form>
<h1>Cart details</h1>

        
        <div class="recently added list">
        <table>
            <tbody>
                <tr>
                <%int count=0;
                for(OrderDetail order: listproduct){
                	%>
                    <td>
                        <table id="carproduct" border=1 >
                            <tbody>
                                <tr>
                                   
                                    <td class="car">
                                        <span> orderid : <%= order.getOrder_id() %> </span><br>
                                        <span>userid : <%=order.getUserId()%>  </span><br>
                                        <span>carmodel : <%=order.getCarid()%> </span><br>
                                        <span>price : <%=order.getPrice() %> </span><br>
                                      
                                      
                                      
                                        
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                    </tr>
                       <% count ++;
                       if(count==3){ %> 
                    	   
                    	 
                     <%count=0; }}%>  
                         <tr>              
                </tr>
            </tbody>
        </table>
         
        </div>
    </div>
   </div>

</body>
</html>