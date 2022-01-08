<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="http://code.jquery.com/ui/1.9.2/themes/smoothness/jquery-ui.css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
</head>
<body>

<h1>Customer Details:</h1>
<form action="custdetails" method="post">
<label>Enter your name:</label>
<input type="text" name="custname" pattern="[A-Za-z]{3,}" required><br><br>
<label>Enter your address:</label>
<input type="text" name="address" pattern="^[#.0-9a-zA-Z\s,-]+$"required><br><br>
<label>Enter your city</label>
<input type="text" name="city" pattern="[A-Za-z]{3,}" required><br><br>
<label>Enter your pincode:</label>
<input type="number" name="code" pattern="^[1-9]{1}[0-9]{2}\\s{0, 1}[0-9]{3}$" required><br><br>
<label>Enter your noofdates:</label>
<input type="Date" name="Expected" id="datefield" required><br><br>
<h1>advance pay amount:</h1>
<input type="number" name="advance" min="40000" required><br><br>
<button type="submit">submit</button>
</form>
</body>
<script type="text/javascript">
var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; 
var yyyy = today.getFullYear();
if(dd<10){
  dd='0'+dd
} 
if(mm<10){
  mm='0'+mm
} 

today = yyyy+'-'+mm+'-'+dd;
document.getElementById("datefield").setAttribute("min", today);
</script>
</html>