<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addprice" method="post">
<label>Enter your carid:</label>
<input type="text" name="carid"><br><br>
<label>Enter your carname:</label>
<input type="text" name="carname"><br><br>
<label>Enter your Exshowroom_price:</label>
<input type="text" name="showroom_price"><br>
<label>Enter your Roadtax:</label>
<input type="text" name="roadtax"><br><br>
<label>Enter your insurance:</label>
<input type="text" name="insurance"><br><br>
<button type="submit">add price</button>
</form>
<hr>
<form action="updateprice" method="post">
<label>Enter your carid:</label>
<input type="text" name="carid"><br><br>
<label>Enter your Exshowroom_price:</label>
<input type="text" name="showroom_price"><br>
<label>Enter your Roadtax:</label>
<input type="text" name="roadtax"><br><br>
<label>Enter your insurance:</label>
<input type="text" name="insurance"><br><br>
<button type="submit">update price</button>
</form>

</body>
</html>