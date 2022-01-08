<%@page import="com.Carbooking.model.UserDetail"%>

<%@page import="com.Carbooking.daoimpl.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>wallet recharge</title>
</head>
<body>


<h2>product update</h2>
<form action="wallet" method="post">
	
	Enter recharge amount:<br>
	<input type="number" name="amount" id="number"><br><br>
	Enter your mail:<br>
	<input type="email" name="email" id="email"><br><br>
	
	<button type="submit">wallet recharge</button></form><br><br>
	

</body>
</html>

