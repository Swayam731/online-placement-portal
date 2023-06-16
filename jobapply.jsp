<%-- 
    Document   : jobapply
    Created on : 22 May, 2023, 7:18:40 PM
    Author     : swayam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Job Apply Page</title>
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
            .topheading{
                background-color: #63C5DA;
                height: 100px;
                width: 100%;
                text-align: center;
                color: white;
                margin: auto;
                padding: auto;
            }
            .container{
                width: 500px;
                height: 600px;
                text-align: center;
                background-color: #e6e6e6;
                border: 4px solid orange;
                border-radius: 7px;
                margin: 20px auto;
                box-sizing: border-box;
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
          <div class="topheading">
            <h1><b>Job Apply Form</b></h1>
          </div>
           <hr> 
           <div class="container">
            <form action="ApplyJobChecker" method="post">
                <table>
                    <tr>
                        <td>name : </td>
                        <td><input type="text" name="name"></td>
                    </tr>
                    <tr>
                        <td>Enrollment No  : </td>
                        <td><input type="text" name="enrollment"></td>
                    </tr>
                    <tr>
                        <td>Email : </td>
                        <td><input type="email" name="email"></td>
                    </tr>
                    <tr>
                        <td>Contact : </td>
                        <td><input type="number" name="contact"></td>
                    </tr>
                    <tr>
                        <td>Skills : </td>
                        <td><input type="text" name="skills"></td>
                    </tr>
                    <tr>
                        <td>10th % : </td>
                        <td><input type="number" name="tenth"></td>
                    </tr>
                    <tr>
                        <td>12th % : </td>
                        <td><input type="number" name="twelth"></td>
                    </tr>
                    <tr>
                        <td> number of back : </td>
                        <td><input type="number" name="back"></td>
                    </tr>
                    <tr>           
                        <td><input type="submit" value="apply now"></td>
                    </tr>
                </table>   
            </form>
          </div>    
    </body>
</html>
