<%-- 
    Document   : homepage
    Created on : May 25, 2022, 5:48:27 PM
    Author     : mahesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>complete responsive adventure & tour website design</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
    
<!-- header section starts  -->

<header class="header">

    <a href="#" class="logo"> <i class="fas fa-hiking"></i> Mile Walker </a>

    <nav class="navbar">
        <div id="nav-close" class="fas fa-times"></div>
        <a href="#home">home</a>
        <a href="#about">about</a>      
        <a href="#packages">packages</a>
        <a href="registration.jsp">Login</a>
    </nav>

    <div class="icons">
        <div id="menu-btn" class="fas fa-bars"></div>
        
        <div id="search-btn" class="fas fa-search"></div>
    </div>

</header>

<!-- header section ends -->

<!-- search form  -->

<div class="search-form">

    <div id="close-search" class="fas fa-times"></div>


</div>

<!-- home section starts  -->

<section class="home" id="home">

    <div class="swiper home-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide">
                <div class="box" style="background: url(images/home-bg-1.jpg) no-repeat;">
                    <div class="content">
                        <span>never stop</span>
                        <h3>exploring</h3>
                        <p><h1> Maharashtra Treks </h1></p>
<!--                        <a href="#" class="btn">get started</a>-->
                    </div>
                </div>
            </div>

            <div class="swiper-slide">
                <div class="box second" style="background: url(images/home-bg-2.jpg) no-repeat;">
                    <div class="content">
                        <span>make tour</span>
                        <h3>amazing</h3>
                        <p>Best Walks,Hikes and Treks in Maharashtra!</p>
                        <a href="#" class="btn">get started</a>
                    </div>
                </div>
            </div>

            
        </div>

        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>

    </div>

</section>


<section class="packages" id="packages">

    <h1 class="heading">popular packages</h1>

    <div class="box-container">
        <%@page import="java.sql.*" %>
        <%
            
            try
            {
              Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mw","root","");
              Statement st=con.createStatement();
              ResultSet rs=st.executeQuery("select * from packg");
              if(!rs.isBeforeFirst()){
                  %>
                          
               <%           
              
            }
              while(rs.next())
              {
                  String pname,details,img;
                  int price;
                  img=rs.getString("img");
                  pname=rs.getString("pname");
                   price=rs.getInt("price");
                  details=rs.getString("details");
                  %>
                  
                  <div class="box">
            <div class="image">
                <img src="./images/<%=img%>" alt="">
            </div>
            <div class="content">
                <h3><%=pname%></h3>
                <p><%=details%></p>
                <div class="price">₹<%=price%></div>
                <a href="kalsubai.jsp" class="btn">explore now</a>
				
            </div>
        </div>

<%
    }
}
catch(Exception e)
{
out.print(e);
}
%>


 
             
  

		



		
		
</section>

<section class="services">

    <h1 class="heading"> what we offer </h1>

    <div class="box-container">

        <div class="box">
            <img src="images/serv-1.png" alt="">
            <h3>complete guide</h3>
            </div>


        <div class="box">
            <img src="images/serv-3.png" alt="">
            <h3>family trips</h3>
            </div>


        <div class="box">
            <img src="images/serv-6.png" alt="">
            <h3>various adventures</h3>
           </div>
        
    </div>

</section>
<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>quick links</h3>
            <a href="#home">home</a>
<!--            <a href="#about">about</a>-->
            <a href="#packages">packages</a>
           </div>


        <div class="box">
            <h3>contact info</h3>
            <a href="#"> <i class="fas fa-phone"></i> 8459664599</a>
            <a href="#"> <i class="fas fa-phone"></i>7757851669</a>
            <a href="#"> <i class="fas fa-envelope"></i> satyajeetbachute123@gmail.com </a>
            <a href="#"> <i class="fas fa-map"></i> Solapur , Maharashtra 413001 </a>
        </div>


    </div>



</section>

<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>