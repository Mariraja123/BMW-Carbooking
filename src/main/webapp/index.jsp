<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <style type="text/css">
   html, body{
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color:#008cba; 
    height:100%;
}
.container{ 
   height:100%;
   display:flex;
   align-items:center;
   justify-content:center;
}
.content{
    background-color:white;
    width:500px;
    height:500px;
}
img{
    width: 100%;
    height: 25%;
}
.form-title{
    padding:10px 40px 0px;
}
form{
    padding:0px 40px;
}
input[type=text], [type=email]{
    border: none;
    border-bottom: 1px solid black;
    outline:none;
    width:100%;
    margin: 8px 0;
    padding:10px 0;
}
input[type=number]{
    border: none;
    border-bottom: 1px solid black;
    outline:none;
    margin: 8px 0;
    padding:5px 0;
}
input :hover {
    background-color: red;
}
select{
    border: none;
    border-bottom: 1px solid black;
    outline:none;
    margin: 8px 0;
    padding:5px 0;
    width:50%;
}
.beside{
    display:flex;  
    justify-content: space-between;
}
button{
    color:#ffffff;
    background-color: #4caf50;
    height:40px;
    width:25%;
    margin-top:15px;
    cursor: pointer;
    border:none;
    border-radius:2%;
    outline:none;
    text-align:center;
    font-size:16px;
    text-decoration:none;
    -webkit-transition-duration:0.4s;
    transition-duration:0.4s;
}
button:hover{
    background-color:#333333;
}
   </style>

</head>

<body>

   <!--   <div class="container">

        <h2 style="text-align: center;">Sign In</h2>
        <br><br>
        <div class="col-lg-12 " id="one">
            <form  action="sample1"  method="post">
                <div class="row">
                    <div class=" col-md-6">
                        <div class="form-group">
                            <input type="text" name="first_name" id="first_name" class="form-control"
                                placeholder="First Name" required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="email" name="email" id="email" class="form-control"
                                placeholder="Email Address"required>
                        </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="number" name="number" id="number" class="form-control"
                                    placeholder="Enter your phone number"required>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class=" col-md-6">
                            <div class="form-group">
                                <input type="password" name="password" id="password" class="form-control"
                                    placeholder="Password" required>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div>
                        
                 <!--    <a href="index.html" value="Register" class="btn btn-dark btn-block"> Register</a> -->
                   <!--  <button type="submit">Register</button>-->
                
                    </div>
                    </div>
                    <br><br>
                    

            </form>
            
            
        </div>


    </div>--->
<div class="container">
    <div class="content">
       <img src="https://res.cloudinary.com/debbsefe/image/upload/f_auto,c_fill,dpr_auto,e_grayscale/image_fz7n7w.webp" alt="header-image" class="cld-responsive">
            <h1 class="form-title">Register Here</h1 >
            <form action="sample1"  method="post">
               <input type="text" placeholder="NAME" name="first_name">
            <div class="beside">
                <input type="number" placeholder="PHONE NUMBER"  name="number" >
             
            </div>
                <input type="email" placeholder="EMAIL ADDRESS" name="email">
                <input type="text" placeholder="password"  name="password"><br>
                <button type="submit">Register</button>
            </form>
        </div>
 </div>

</body>



</html>
