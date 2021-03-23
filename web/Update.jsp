

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Test.*,java.util.ArrayList" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color:powderblue;">
        <%
             UserRegistration_dao dao=new UserRegistration_dao();
            UserRegistration_pojo obj=new UserRegistration_pojo();
            obj.setFullname(request.getParameter("fullname"));
            obj.setEmail(request.getParameter("email"));
             obj.setPass(request.getParameter("pass"));
              obj.setDob(request.getParameter("dob"));
               obj.setGender(request.getParameter("gender"));
            if(dao.update(obj.getId(),obj.getFullname(),obj.getEmail(),obj.getPass(),obj.getDob(),obj.getGender())>0)
            {
                out.println("<script>alert('Data update ');window.location.href='index.jsp';</script>");
            }
            else
            {
                    out.println("<script>alert('Data not update');window.location.href='create.html';</script>");
            
            }
            %>
    </body>
</html>
