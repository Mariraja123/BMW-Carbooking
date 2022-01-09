<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="com.Carbooking.model.CarProduct"%>
<%@page import="com.Carbooking.daoimpl.*"%>
        
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
.one
{
position:relative;
margin-left:400px;
}

</style>

</head>
<body>

<div class="one">
      <% 
      List<CarProduct> searchlist =(List<CarProduct>) session.getAttribute("carname");
     %>
      
      <table border="1">
<h1><b>Search By Car:</b></h1>
<thead>
<tr>
<th>Car Photos</th>
<th >Car Name</th>
<th>fuel type</th>
<th>CarType</th>
<th>booking</th>

</tr>
</thead>

      <tbody>
<%
for (CarProduct list : searchlist) {
int i=0;
i++;

%>
<tr>

 <td><img src="<%=list.getCar_name()%>.jpg" width=300px height=300px  alt="img"> </td>
<td><%=list.getCar_name()%></td>
<td><%=list.getFuelType() %></td>

<td><%=list.getCarType()%></td>

<!-- <td><a href="confirmcar.jsp?Car_name=<%list.getCar_name();%>">book</a></td>--->

<td> <a href="confirmcar.jsp">Book</a></td>


</tr>

<%
}

%>
      </tbody>
      </table>
      
   </div>   
</body>
</html>