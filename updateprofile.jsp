<%-- 
    Document   : updateprofile
    Created on : 22 May, 2023, 4:32:50 PM
    Author     : swayam
--%>

<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Profile Page</title>
        <style>
            .wholebody{
                text-align: center;
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
            .btn{
                width: 200px;
                size: landscape;
                text-style: none;
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
      <div class="wholebody">
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
            <h1><b>Update Profile</b></h1>
        </div>
        <hr> 
        
        <%
        try
       {
           Statement st = DBConnector.getStatement();
           
           String query = "SELECT * FROM studentinfo where username = '"+username+"'";
           ResultSet rs = st.executeQuery(query);
        %>
        <form action="UpdateProfileChecker" method="post">
         <table align="center">
        <%
          if(rs.next())
          {
     
     %>
     <tr>
            <td><b></b><input type="hidden" name="enrollment" value="<%=rs.getString(1)%>"></td>
        </tr>
        <tr>
            <td><b>username</b><input type="text" name="username" value="<%=rs.getString(2)%>"></td>
        </tr>
        <tr>
            <td><b>password</b><input type="password" name="password" value="<%=rs.getString(3)%>"></td>
        </tr>
        <tr>
            <td><b>first name</b><input type="text" name="firstname" value="<%=rs.getString(5)%>"></td>
        </tr>
        <tr>
            <td><b>last name</b><input type="text"name="lastname" value="<%=rs.getString(6)%>"></td>
        </tr>
        <tr>
            <td><b>father name</b><input type="text" name="fathername" value="<%=rs.getString(7)%>"></td>
        </tr>
        <tr>
            <td><b>mother name</b><input type="text" name="mothername"value="<%=rs.getString(8)%>"></td>
        </tr>
        <tr>
            <td><b>gender</b><input type="text" name="gender" value="<%=rs.getString(9)%>"></td>
        </tr>
        <tr>
            <td><b>date of birth</b><input type="text" name="dob" value="<%=rs.getString(10)%>"></td>
        </tr>
        <tr>
            <td><b>contact</b><input type="text" name="contact" value="<%=rs.getString(11)%>"></td>
        </tr>
        <tr>
            <td><b>email</b><input type="text" value="<%=rs.getString(12)%>"></td>
        </tr>
        <tr>
             <td><b>address</b><input type="text" name="address" value="<%=rs.getString(13)%>"></td>
        </tr>
        <tr>
        
        </tr>
      </table>
        <input type="submit" value="update profile">
     </form>
        <%
           }
           }
            catch(SQLException e)
        {
            System.out.println(e);
        }
        %>
         </div>
    </body>
</html>
