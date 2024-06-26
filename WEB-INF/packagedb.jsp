<%-- 
    Document   : packagedb
    Created on : May 28, 2022, 10:19:31 AM
    Author     : mahesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
      int pids=Integer.parseInt(request.getParameter("pid"));
     String name=request.getParameter("pname");
        int prce=Integer.parseInt(request.getParameter("price"));
      
        String info=request.getParameter("details");
        String image=request.getParameter("img");
    
     try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mw","root","");
        PreparedStatement ps=con.prepareStatement("insert into packg values(?,?,?,?,?)");
         ps.setInt(1,pids);
        ps.setString(2, name);
        ps.setInt(3,prce );
      
        ps.setString(4, info);
        ps.setString(5,image);
        
        ps.executeUpdate();
        response.sendRedirect("package.jsp");
        out.print("inserted Successfully..");
    }
    catch(Exception e)
    {
        out.print(e);
    }
  %>  
