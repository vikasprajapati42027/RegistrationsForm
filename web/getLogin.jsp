
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
 <body style="background-color:powderblue;">

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registrations","root","");
String email=request.getParameter("email");
 String pass=request.getParameter("pass");
 Statement stmt=con.createStatement();
 ResultSet rs=stmt.executeQuery("select count(*) from user where email='"+email+"' and pass='"+pass+"'");
 rs.next();
 int chk=rs.getInt(1);
 if (chk>0) {
     session.setAttribute("email", email);
        out.println("<script>alert('Login Success'); window.location.href='index.jsp';</script>");
             }
 else
     {
  out.println("<script>alert('Invalid id and Password'); window.location.href='login.jsp';</script>");

    }
%>
    </body>
</html>
