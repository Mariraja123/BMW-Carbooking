<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Customer Details:</h1>
<form action="custdetail" method="post">
<label>Enter your name:</label>
<input type="text" name="custname"><br><br>
<label>Enter your address:</label>
<input type="text" name="address"><br><br>
<label>Enter your city</label>
<input type="text" name="city"><br><br>
<label>Enter your pincode:</label>
<input type="number" name="code"><br><br>
<label>Enter your noOfDates:</label>
<input type="number" name="Expected"><br><br>
<h1>advance pay amount:</h1>
<input type="number" name="advance"><br><br>
<button type="submit">submit</button>
</form>
</body>
</html>