<%-- 
    Document   : home
    Created on : 22 May, 2023, 10:40:40 AM
    Author     : swaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <style>
            body
            {
            background-color: lightblue;
            }
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
        </style>
    </head>
    <body>
         <header>
            <nav class="navbar">
                <ul>
                    <li><a href="home.jsp">home</a></li>
                    <li><a href="addstudent.jsp">add student</a></li>
                     <li><a href="viewstudent.jsp">view student</a></li>
                    <li><a href="searchstudent.jsp">search student</a></li>
                    <li><a href="addjob.jsp">Add job</a></li>
                    <li><a href="reportjob.jsp">report job</a></li>
                    <li><a href="addcompany.jsp">Add company</a></li>
                    <li><a href="reportcompany.jsp">report company</a></li>
                    <li><a href="candidatereport.jsp">report candidate</a></li>
                    <li><a href="logout.jsp">logout</a></li>
               </ul>
            </nav>
        </header>
         <%
          String username =(String)session.getAttribute("username");  
          if(username==null)
          {
              response.sendRedirect("login.html");
          }
      %>
    </body>
</html>
