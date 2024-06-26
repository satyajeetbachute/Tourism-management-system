<%-- 
    Document   : login
    Created on : May 30, 2022, 12:02:50 PM
    Author     : mahesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- ===== Iconscout CSS ===== -->
   <!-- <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css"> -->

    <!-- ===== CSS ===== -->
    <link rel="stylesheet" href="css/stylelo.css">
         
    <title>Login & Registration Form</title>
</head>
<body>
    
    <div class="container">
        <div class="forms">
            <div class="form login">
                <span class="title">Login</span>

                <form action="logindtl.jsp" method="post">
                    <div class="input-field">
                        <input type="text" placeholder="Enter your email" required name="uname">
                        <i class="uil uil-envelope icon"></i>
                    </div>
                    <div class="input-field">
                        <input type="password" class="password" placeholder="Enter your password" required name="upass">
                        <i class="uil uil-lock icon"></i>
                        <i class="uil uil-eye-slash showHidePw"></i>
                    </div>

                        
                    <div class="input-field button">
                        <input type="button" value="Login Now">
                    </div>
                </form>
                </body>
</html>
