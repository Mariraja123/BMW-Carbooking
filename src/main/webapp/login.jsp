<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
.para
{
margin-left:700px;
margin-top:-400px;
}
.para2
{
width:50%;
}
.imr2
{
margin-left:530px;
margin-top:-250px;
}
.nav-item
{
  float:right;
}

</style>
</head>

<body>

   <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="#">
    <img src="bmw2.jpg" alt="logo" style="width:40px;">
  </a>
  
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="#" data-toggle="modal" data-target="#myModal" style="float:right;margin-left:1100px;">Login </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Index.jsp">Register </a>
    </li>
  
  </ul>
</nav>
 
      <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Login Form</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
           <form action="loginval" method="post">
           <label>Enter your mail:</label><br>
            <input type="text" placeholder="Email"  name="uname" pattern="[a-z0-9]+[@][a-zA-Z]+[.][a-z]+" required /><br>
            <label>Enter your Password:</label><br>
            <input type="password" placeholder="Password" name="upass" pattern="(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,}"required><br><br>
            <button class="login" type="submit">Log In</button><br>
            <a href="Forgetpassword.jsp">Forgot Password ?</a>
            <hr>
            <a href="Index.jsp">Create New Account</a>
          </form>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  
<!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">

  <!-- Indicators/dots -->
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
  </div>
  
  <!-- The slideshow/carousel -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="BMW X1 Series.jpg" alt="Los Angeles" class="d-block" style="width:70%" >
      <div class="carousel-caption">
        <h3>BMW X1 Series</h3>
       
      </div>
    </div>
    <div class="carousel-item">
      <img src="bmw x5 series.jpg" alt="Chicago" class="d-block" style="width:70%">
      <div class="carousel-caption">
        <h3>BMW x8 series</h3>
       
      </div> 
    </div>
    <div class="carousel-item">
      <img src="BMW X1 Series.jpg" alt="New York" class="d-block" style="width:70%">
      <div class="carousel-caption">
        <h3>BMW x12 series</h3>
       
      </div>  
    </div>
  </div>
  
  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>
 <h1>About us</h1>
 <div class="imr">
 <img src="bmw.jpg" style=width:800px;>
 </div>
 <div class="para">
 <h3>The BMW Group company profile.</h3>
 <p>BMW cars have been officially sold in the United States since 1956 and manufactured in the United States since 1994. The first BMW dealership in the United States opened in 1975. In 2016, BMW was the twelfth highest selling brand in the United States.

The BMW manufacturing plant in Greer, South Carolina, has the highest production volume of the BMW plants worldwide, currently producing approximately 1,500 vehicles per day. The models produced at the Spartanburg plant are the X3, X4, X5, X6 and X7 SUV models.

In addition to the South Carolina manufacturing facility, BMW's North American companies include sales, marketing, design, and financial services operations in the United States, Mexico, Canada and Latin America. The North American headquarters for BMW is located at 300 Chestnut Ridge Road Woodcliff Lake, NJ. Its North American headquarters for its large financial services subsidiary is located in Dublin, Ohio and is responsible for the captive lending for BMW automotive, BMW Motorsport, and Rolls-Royce cars, when buyers lease the vehicles or decide to finance directly with the company</p>
</div>
<div class="para2">
<h1>History of BMW</h1>
<p>SUPPORTING THE NEXT GENERATION.
BMW has a long established commitment to supporting education across the UK. Launched in the UK over two decades ago as part of the company's corporate responsibility commitment, BMW Group Education provides teachers and students with free, curriculum-linked and award-winning educational resources.

The comprehensive resources for primary and secondary schools cover topics including:
 

road safety and the benefits of travelling actively
sustainable mobility, technology and design
understanding sustainable living in urban environments
careers information</p>
</div>
<div class="imr2">
<img src="BMW X1 Series.jpg" style=width:800px;>
</div>
</body>
</html>