<%-- 
    Document   : pckgdtl
    Created on : May 28, 2022, 1:55:31 PM
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
            <thead><h1 class="text-center mb-4">Package Details</h1>
            <tr class="bg-dark text-white">
                 <th scope="col">Package ID </th>
                <th scope="col"> Package Name</th>
                <th scope="col">Package price </th>
                
                <th scope="col">Package Detail </th>
                <th scope="col">Images </th>
                             
            </tr>
            </thead>
            <tbody>
                <%
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mw","root","");
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery("Select * from packg");
                        while(rs.next())
                        {
                            int pids=rs.getInt("pid");
                            String name=rs.getString("pname");
                            
                            int prices=rs.getInt("price");
                            
                            String detail=rs.getString("details");
//                            int passnger=rs.getInt("passnger");
                            String image=rs.getString("img");

                            
                            
                %>
                <tr>
                    <th scope="row">
                        <%=pids%>
                    </th>
                    <td><%=name%></td>
                    <td><%=prices%></td>
                    <td><%=detail%></td>
                    <td><%=image%></td>
                    <td><button><a href="pckgdtl.jsp"</button></a></td>
                    
                    
                    
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