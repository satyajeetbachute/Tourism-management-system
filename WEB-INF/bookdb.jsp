<%-- 
    Document   : bookdb
    Created on : May 27, 2022, 6:03:37 AM
    Author     : mahesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<%
     String name=request.getParameter("name");
    String email=request.getParameter("email");
    String mobno=request.getParameter("mob");
        String destn=request.getParameter("destn");
    int passnger=Integer.parseInt(request.getParameter("passnger"));
    
     try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mw","root","");
        PreparedStatement ps=con.prepareStatement("insert into book values(?,?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2, email);
         ps.setString(3,mobno );
        ps.setString(4, destn);
        ps.setInt(5,passnger);
        
        ps.executeUpdate();
        response.sendRedirect("book.jsp");
        out.print("inserted Successfully..");
    }
    catch(Exception e)
    {
        out.print(e);
    }
  %>  
