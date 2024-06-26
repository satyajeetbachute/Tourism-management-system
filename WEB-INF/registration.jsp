<%-- 
    Document   : registration
    Created on : May 29, 2022, 8:46:23 AM
    Author     : mahesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--<title> Registration or Sign Up form in HTML CSS | CodingLab </title>-->
    <link rel="stylesheet" href="style.css">
   </head>
<body>
  <div class="wrapper">
    <h2>Registration</h2>
    <form action="registrationdb.jsp" method="post">
      <div class="input-box">
          <input type="text" placeholder="Enter your name"  name="uname"required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="Enter your email" name="email" required>
      </div>
      <div class="input-box">
        <input type="password" placeholder="Create password" name="password" required>
      </div>
      <div class="input-box">
        <input type="text" placeholder=" Mobile no" name="mobileno"required >
      </div>
      <div class="policy">
        <input type="checkbox">
        <h3>I accept all terms & condition</h3>
      </div>
      <div class="input-box button">
        <input type="Submit" value="Register Now">
      </div>
     <!--  <div class="text">
        <h3>Already have an account? <a href="#">Login now</a></h3>
      </div> -->
    </form>
  </div>
</body>
</html>