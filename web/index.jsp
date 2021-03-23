<%@page import="Test.*,java.util.ArrayList" %>
<html lang="en">
  <head>
   
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    
    <title>Form Registrations</title>
  </head>
  
    

    
     <body style="background-color:powderblue;">
        <center>
            <h1>Welcome  your data</h1>
            
            <table id="table_id" class="display" border="2">
    <thead>
        <tr>
            
             <th>Id NO</th>
                    <th>Full Name</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Date of Birth</th>
                       <th>Gender</th>
                       
                       <th>Create</th>
                    <th>Edit</th>
                    <th>delete</th>
        </tr>
    </thead>
    <tbody>
          <%
                UserRegistration_dao dao=new UserRegistration_dao();
                ArrayList<UserRegistration_pojo> data=dao.Fetch();     

                for(UserRegistration_pojo obj:data)
                    {
                %>
        <tr>
                    <td><%=obj.getId()%></td>
                    <td><%=obj.getFullname()%></td>
                    <td><%=obj.getEmail()%></td>
                    <td><%=obj.getPass()%></td>
                     <td><%=obj.getDob()%></td>
                      <td><%=obj.getGender()%></td>
                    <td><a href="create.html" >Create</a></td>
                    <td><a href="edit.jsp?id=<%=obj.getId()%>">Edit</a></td>
                    <td><a href="del.jsp?id=<%=obj.getId()%>">delete</a></td>
                </tr>
                <% }%>
        
    </tbody>
</table>
    
            <script>
           $(document).ready( function () {
    $('#table_id').DataTable();
} );
                </script>
        </center>
  </body>
</html>