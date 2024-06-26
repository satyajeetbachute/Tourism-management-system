<%-- 
    Document   : registrationdtl
    Created on : May 29, 2022, 9:23:17 AM
    Author     : mahesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html> 
    <head>
         <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </head>
    <body>

<%@page import="java.sql.*" %>
    <hr>
    <div class="container mt-6">
        
        <div class="table-responsive">
            <table class="table table-bordered table-hover table-striped">
            <thead><h1 class="text-center mb-4">Order Details</h1>
            <tr class="bg-dark text-white">
                <th scope="col"> User Name</th>
                <th scope="col">User Email</th>
                <th scope="col"> User Password</th>
                <th scope="col"> user Mobileno </th>
            </tr>
            </thead>
            <tbody>
                <%
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mw","root","");
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery("Select * from registration");
                        while(rs.next())
                        {
                            String name=rs.getString("uname");
                            String email=rs.getString("email");
                           String pass=request.getParameter("password");
                         String mob=request.getParameter("mobileno");
                            
                            
                %>
                <tr>
                    <th scope="row">
                        <%=name%>
                    </th>
                    <td><%=email%></td>
                    <td><%=pass%></td>
                     <td><%=mob%></td>
                    
                    
                </tr>
                <%
                        }
                    }
                    catch(Exception e)
                    {
                        out.print(e);
                    }
                %>
            </tbody>
            </table>
        </div>
    </div>
</body>
</html>
