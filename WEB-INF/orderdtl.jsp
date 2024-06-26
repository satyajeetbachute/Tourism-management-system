<%-- 
    Document   : orderdtl
    Created on : May 28, 2022, 11:38:44 AM
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
                <th scope="col"> Passenger Name</th>
                <th scope="col">Passenger Email</th>
                <th scope="col">Passenger Mobile</th>
                <th scope="col">Passenger Destination</th>
                <th scope="col">Number of Passenger </th>
               
            </tr>
            </thead>
            <tbody>
                <%
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mw","root","");
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery("Select * from book");
                        while(rs.next())
                        {
                            String name=rs.getString("name");
                            String email=rs.getString("email");
                            String mob=rs.getString("mob");
                        
                            String destn=rs.getString("destn");
                            int passnger=rs.getInt("passnger");
                            
                            
                %>
                <tr>
                    <th scope="row">
                        <%=name%>
                    </th>
                    <td><a href="mailto:satyajeetbacte@123.com"><%=email%></a></td>
                    <td><a href="tel:<%=mob%>"><%=mob%></td>
                    <td><%=destn%></td>
                    <td><%=passnger%></td>
                    
                    
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