<?php
require 'dbcon.php';
?>
<!DOCTYPE html>
<html>
<head>
    
    <title>Login Page</title>
    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" >
        <link rel="stylesheet" href="css/global.css" >
    
</head>
<body style="" class="bg">
<div class="row">
<div class="col-md-2" align="center"><a href="index.html"class="btn btn-outline-warning" role="button" style="margin-top:10px">Back</a></div>
<div class="col-md-8"></div>
<div class="col-md-2"align="left"><a href="admin/adlogin.php"class="btn btn-outline-primary" role="button" style="margin-top:10px">Admin Login</a></div>
</div>
<!-- <header>
<h3><a href="index.php" style="margin-left:15px">Back</a></h3>
<h3><a href="admin/adlogin.php"style="margin-left:85%">Admin Login</a></h3>
</header> -->

    <center><h2 class="text">Login Form<h2>
    <!-- <img src="image/protech.jpg" class="protech"> -->
    </center>
    <hr>
    <div class="container">
    <div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
    <form class="form-container" action="loginverf.php" method="post">
                    <div class="form-group">
                    <label for="">User Id/Registered Email Id</label>
                    <input type="text" class="form-control" id="" name="userid" placeholder="Enter Your User Id/Email" required>
                    </div>
					<div class="form-group">
                    <label for="">Password</label>
                    <input type="password" class="form-control" id="" name="pass" placeholder="Enter Your Password" required>
                    </div>
                    <div class="form-group" align="center">
                    <input type="submit" value="Login" class="btn btn-success" name="login">
					</div>

                <div class="form-group" align="center">
                <a href="forgotpassword/forgotPassword.php"> Forgot Password or User Id?</a><br>
                New user? Register here.<br><br>
                
                <a href="registration/registration.php"> <input type="button"  class="btn btn-primary" value="Register"/></a>
                </div>
                
    </form>
    </div>
    <div class="col-md-3"></div>
    </div>
</div>
</body>
</html>
