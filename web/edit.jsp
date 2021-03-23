
<%@page import="Test.*,java.util.*"%>
<html>
  <head>
   
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
 <body style="background-color:powderblue;">

      <form action="Update.jsp" method="POST">
          <center>
              <%
                   UserRegistration_dao dao=new UserRegistration_dao();
                   int id=Integer.parseInt(request.getParameter("id"));
                   ArrayList<UserRegistration_pojo> data=dao.getData(id);
                   for(UserRegistration_pojo  obj:data)
                   {
                       
                   %>
                      <h1>Update New Books</h1>
                     <table border="1">
                  
                  <tr>
                      <td>Title</td>
                      <td><input type="text" value="<%=obj.getFullname()%>" name="fullname"/></td>
                  </tr>


                  <tr>
                      <td>Author</td>
                      <td><input type="text" value="<%=obj.getEmail()%>" name="email"/></td>
                  </tr>


                  <tr>
                      <td>Publisher Year</td>
                      <td>
                      <input type="password" value="<%=obj.getPass()%>" name="pass"/> 
                      </td>
                  </tr>
                   <tr>
                      <td>Publisher</td>
                      <td><input type="text" value="<%=obj.getDob()%>" name="dob"/></td>
                  </tr>
                   <tr>
                      <td>Place</td>
                      <td><input type="text" value="<%=obj.getGender()%>" name="gender"/></td>
                  </tr>
                  <tr>
                      <tr>
                      <td></td>
                      <td><input type="submit" value="update"/></td>
                  </tr>
              </table>
                <input type="hidden" value="<%=id%>" name="hf" />  
                  <% } %>
                  
          </center>

      </form>
  </body>
</html>
