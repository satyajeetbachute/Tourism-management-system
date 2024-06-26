<%-- 
    Document   : logindtl
    Created on : May 31, 2022, 5:09:02 AM
    Author     : mahesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.* " %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%
            String uname; String password; int userid;
            %>
            <% Connection con=null; PrepareStatement ps=null; ResultSet rs=null;
            String drivername="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/mw";
            String dbuser="root";
            String dbpass="";
            String userlogin="select uname,email,password from registration where email=? and passsword=?";
            String usernam=request.getParameter("username");
            String passwor=request.getParameter("password");
            
            try
            {
                Class.forName(drivername);
                con=DriverManager.getConnection(url,dbuser,dbpass);
                ps=con.prepareStatement(userlogin);
                ps.setString(1,usernam);
                ps.setString(2.passwor);
                rs=ps.exevuteQuery();
                if(rs.next())
                {
                    
                }
            }
            
         ;
    </body>
</html>
