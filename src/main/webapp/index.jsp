<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration page</title>
   <style type="text/css">
   html, body{
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
   background:#E7E9BB;
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

<div class="container">
    <div class="content">
       <img src="https://res.cloudinary.com/debbsefe/image/upload/f_auto,c_fill,dpr_auto,e_grayscale/image_fz7n7w.webp" alt="header-image" class="cld-responsive">
            <h1 class="form-title">Register Here</h1 >
            <form action="sample1"  method="post">
               <input type="text" placeholder="NAME" name="first_name" pattern="[A-Za-z]{3,}" title="minimum 3 characters should be there." required>
            <div class="beside">
                <input type="number" placeholder="PHONE NUMBER"  name="number" pattern="[6-9]{1}[0-9]{9}" minlength="10" maxlength="10" required>
             
            </div>
                <input type="email" placeholder="EMAIL" name="email" pattern="[a-z0-9]+[@][a-zA-Z]+[.][a-z]+"  title="You have to insert @ and . in the username ex.abc@gmail.com" required>
                <input type="text" placeholder="password"  name="password" pattern="(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Minimum 8 characters should be there.There should be atleast one numeric,special character,capital letter and small letter."required ><br>
                <button type="submit">Register</button>
            </form>
        </div>
 </div>

</body>



</html>
