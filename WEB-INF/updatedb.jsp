<%-- 
    Document   : updatedb
    Created on : May 31, 2022, 4:36:08 AM
    Author     : mahesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.* " %>

<% 
int pid=Integer.parseInt(request.getParameter("pid"));
String name=request.getParameter("pname");
        int prce=Integer.parseInt(request.getParameter("price"));
      
        String info=request.getParameter("details");
        String image=request.getParameter("img");
    
     try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mw","root","");
        Statement st=con.createStatement();
        st.executeUpdate("update packg set pid='"+pid+"',pname='"+name+"',price='"+prce+"',details='"+info+"',img='"+image+"'");
        response.sendRedirect("package.jsp");
    }
     catch(Exception e)
     {
         out.print(e);
     }
     
%>
        
     