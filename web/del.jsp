
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Test.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color:powderblue;">
        <%
          UserRegistration_dao dao=new UserRegistration_dao();
          UserRegistration_pojo obj=new UserRegistration_pojo();
    obj.setId(Integer.parseInt(request.getParameter("id")));
    if(dao.Delete(obj.getId())>0)
    {
        out.println("<script>alert('data Deleted');window.location.href='index.jsp';</script>");
    }
    else
    {
            out.println("<script>alert('data not Deleted');window.location.href='index.jsp';</script>");
    
    }
 %>  
    </body>
</html>
