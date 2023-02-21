<%-- 
    Document   : Authentication
    Created on : Feb 21, 2023, 1:20:55 PM
    Author     : Dell
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             String name=request.getParameter("username");
           String pass=request.getParameter("password");
           
           if(pass.equals("nccs1234")&& name.equals("nccs")){
             
               RequestDispatcher rd=request.getRequestDispatcher("InsertPatient.jsp");
               rd.forward(request,response);
           }
           else{
               out.print("Sorry UserName or Password Error!");  
                RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");
               rd.include(request,response);
           }
        }
    
         %>
    </body>
</html>
