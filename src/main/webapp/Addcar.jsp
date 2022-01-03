<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
 body {
      margin: 0;
      font-family: Arial;

    }

    .topnav {
      overflow: hidden;
      background-color: #333;
    }

    .topnav a {
      float: left;
      display: block;
      color: #f2f2f2;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
      font-size: 17px;
    }

    .active {
      background-color: #04AA6D;
      color: white;
    }

    .topnav .icon {
      display: none;
    }

    .dropdown {
      float: left;
      overflow: hidden;
    }

    .dropdown .dropbtn {
      font-size: 17px;
      border: none;
      outline: none;
      color: white;
      padding: 14px 16px;
      background-color: inherit;
      font-family: inherit;
      margin: 0;
    }

    .dropdown-content {
      display: none;
      position: absolute;
      background-color: #f9f9f9;
      min-width: 160px;
      box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
      z-index: 1;
    }

    .dropdown-content a {
      float: none;
      color: black;
      padding: 12px 16px;
      text-decoration: none;
      display: block;
      text-align: left;
    }

    .topnav a:hover,
    .dropdown:hover .dropbtn {
      background-color: #555;
      color: white;
    }

    .dropdown-content a:hover {
      background-color: #ddd;
      color: black;
    }

    .dropdown:hover .dropdown-content {
      display: block;
    }


    .topnav a.icon {
      float: right;
      display: block;
    }
</style>
</head>
<body>
<div class="topnav" id="myTopnav">
    <a href="#home" class="active">Home</a>
    <a href="#news">News</a>
    <a href="#contact">Contact</a>
    <div class="dropdown">
      <button class="dropbtn">Dropdown
        <i class="fa fa-caret-down"></i>
      </button>
      <div class="dropdown-content">
        <a href="Addcar.jsp">Add car</a>
        <a href="PriceDetail.jsp">Update car</a>
        <a href="#">Delete car</a>
      </div>
    </div>
    <a href="#about">About</a>
   
  </div>
  <br>
  
    <form action="addcar" method="post">
      <label>Enter your carid:</label>
      <input type="text" name="carid"><br><br>
      <label>Enter your Carname</label>
      <input type="text" name="carname"><br><br>
      <label>Enter your fueltype</label>
      <input type="text" name="fueltype"><br><br>
      <label>Enter your cartype</label>
      <input type="text" name="cartype"><br><br>
      <label>Enter your carmodel</label>
      <input type="text" name="carmodel"><br><br>
      <label>Enter your price</label>
      <input type="number" name="price"><br><br>
      <button type="submit">Add car</button>
    </form>
    <hr>
    <form action="updatecar" method="Post">
    
     <label>Enter your carid:</label>
      <input type="text" name="carid"><br><br>
      <label>Enter your fueltype</label>
      <input type="text" name="fueltype"><br><br>
      <label>Enter your cartype</label>
      <input type="text" name="cartype"><br><br>
      <label>Enter your carmodel</label>
      <input type="text" name="carmodel"><br><br>
      <label>Enter your price</label>
      <input type="number" name="price">
      <button type="submit">update car</button>
    </form>
 <hr>
 <form action="deletecar" method="post">
 <label>Enter your carid:</label>
 <input type="text" name="carid"><br><br>
 <button type="submit">Delete car</button>
 </form>
</body>
</html>