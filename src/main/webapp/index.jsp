<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style1.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>

<body>

    <div class="container">

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
                    <button type="submit">Register</button>
                    </div>
                    </div>
                    <br><br>
                    

            </form>
        </div>


    </div>
<a href="login.jsp">login</a>

</body>



</html>
