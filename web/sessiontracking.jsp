<%
            String email="";
            try

                    {
            email=session.getAttribute("email").toString();
            if (email.equals("")) {

                             response.sendRedirect("login.jsp");
                                            }
            else
                {
            response.sendRedirect("index.jsp");
            }
            }
            catch(Exception e)
                    {
                response.sendRedirect("login.jsp");
                    }
            %>
            <center>
                <h1>Welcome USer : <%=email%></h1>
            </center>