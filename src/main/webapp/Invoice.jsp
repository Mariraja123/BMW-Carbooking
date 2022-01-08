 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.Carbooking.daoimpl.InvoiceDaoImpl" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.Carbooking.model.Invoice" %>
    <%@ page import="com.Carbooking.model.UserDetail" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.car
{
position:absolute;
margin-top:150px;
margin-left:500px;
}
</style>

</head>


<body>
  <form >
<% InvoiceDaoImpl dao=new InvoiceDaoImpl();
UserDetail user=(UserDetail)session.getAttribute("currentUser");
int userid=user.getUserId();
Invoice ord=new Invoice(userid);



List<Invoice> listproduct=dao.view(ord);


%>

</form>

        
        
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
                                         <h1>invoiceid: <%= order.getInvoice_id() %></h1>
                                        <h1>user name : <%=session.getAttribute("username")%>  </h1><br>
                                        <h1>price : <%=order.getPrice()%> </h1><br>
                                        <h1>Carname : <%=order.getCar_name() %> </h1><br>
                                        
                                      
                                       <a href="ShowProducts.jsp">click me</a>
                                      
                                        
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                    
                       <% count ++;
                       if(count==1){ %> 
                    	   </tr>
                    	   <tr>
                    	 
                     <%count=0; }}%>  
                                     
                </tr>
            </tbody>
        </table>
        
    

</body>
</html>

   
</body>
</html> 