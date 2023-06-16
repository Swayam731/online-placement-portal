<%-- 
    Document   : studentHome
    Created on : 22 May, 2023, 9:46:40 AM
    Author     : swayam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student home Page</title>
        <style>
            .navbar
            {
                background-color: #1e1d1e;
                height: 70px;
                border-radius: 20px;
            }
            .navbar ul
            {
                overflow: auto;
            }
            .navbar li
            {
                float: left;
                list-style: none;
                margin: 13px 20px;
                color: white;
            }
            .navbar li a
            {
                padding: 3px 3px;
                text-decoration: none;
                color: white;
            }
            .navbar li a:hover
            {
                color: red;
            }
            #uname{
                margin-left: 80%;
                margin-top: -30px;
            }
        </style>
    </head>
    <body>
       <%
          String username =(String)session.getAttribute("username");  
          if(username==null)
          {
              response.sendRedirect("login.html");
          }
      %>
        <header>
            <nav class="navbar">
                <ul>
                    <li><a href="studentHome.jsp">home</a></li>
                     <li><a href="viewjobs.jsp">View Jobs</a></li>
                    <li><a href="studentprofile.jsp">My Profile</a></li>
                    <li><a href="updateprofile.jsp">update profile</a></li>
                    <li><a href="logout.jsp">logout</a></li>
                    <li id="uname">Welcome <%=username%></li>
                    
               </ul>
            </nav>
        </header>
    </body>
</html>
