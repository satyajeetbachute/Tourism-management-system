<%-- 
    Document   : registrationdb
    Created on : May 29, 2022, 9:07:47 AM
    Author     : mahesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
     String name=request.getParameter("uname");
        String emails=request.getParameter("email");
        String pass=request.getParameter("password");
    String mob=request.getParameter("mobileno");
     try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mw","root","");
        PreparedStatement ps=con.prepareStatement("insert into registration values(?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2, emails);
        ps.setString(3, pass);
        ps.setString(4, mob);
        
        
        ps.executeUpdate();
        response.sendRedirect("registration.jsp");
        out.print("inserted Successfully..");
    }
    catch(Exception e)
    {
        out.print(e);
    }
  %>  

