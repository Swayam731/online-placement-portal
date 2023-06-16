<%-- 
    Document   : studentprofile
    Created on : 22 May, 2023, 3:23:15 PM
    Author     : swayam
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
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
            table tr td input{
                align-content: space-around;
            }
            table{
               
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
            <h1><b>My Profile</b></h1>
        </div>
        <hr> 
        
        <%
        try
       {
           Statement st = DBConnector.getStatement();
           
           String query = "SELECT * FROM studentinfo where username = '"+username+"'";
           ResultSet rs = st.executeQuery(query);
        %>
        
        <%
          while(rs.next())
          {
     
     %>
     <table align="center" border="1" background="gray" cellspacing="5" cellpadding="5">
         </tr>
        <tr>
            <td><b>enrollment</b> <input readonly type="text" value="<%=rs.getString(1)%>"></td>
        </tr>
        <tr>
            <td><b>username</b><input readonly type="text" value="<%=rs.getString(2)%>"></td>
        </tr>
        <tr>
            <td><b>password</b><input readonly type="password" value="<%=rs.getString(3)%>"></td>
        </tr>
        <tr>
            <td><b>branch</b><input readonly type="text" value="<%=rs.getString(4)%>"></td>
        </tr>
        <tr>
            <td><b>first name</b><input readonly type="text" value="<%=rs.getString(5)%>"></td>
        </tr>
        <tr>
            <td><b>last name</b><input readonly type="text" value="<%=rs.getString(6)%>"></td>
        </tr>
        <tr>
            <td><b>father name</b><input readonly type="text" value="<%=rs.getString(7)%>"></td>
        </tr>
        <tr>
            <td><b>mother name</b><input readonly type="text" value="<%=rs.getString(8)%>"></td>
        </tr>
        <tr>
            <td><b>gender</b><input readonly type="text" value="<%=rs.getString(9)%>"></td>
        </tr>
        <tr>
            <td><b>date of birth</b><input readonly type="text" value="<%=rs.getString(10)%>"></td>
        </tr>
        <tr>
            <td><b>contact</b><input readonly type="text" value="<%=rs.getString(11)%>"></td>
        </tr>
        <tr>
            <td><b>email</b><input readonly type="text" value="<%=rs.getString(12)%>"></td>
        </tr>
        <tr>
             <td><b>address</b><input readonly type="text" value="<%=rs.getString(13)%>"></td>
        </tr>
        <tr>
            <td><b>10th percent</b><input readonly type="text" value="<%=rs.getString(14)%>"></td>
        </tr>
        <tr>
            <td><b>10th YOP</b><input readonly type="text" value="<%=rs.getString(15)%>"></td>
        </tr>
        <tr>
            <td><b>12th percent</b><input readonly type="text" value="<%=rs.getString(16)%>"></td>
        </tr>
        <tr>
            <td><b>12th YOP</b><input readonly type="text" value="<%=rs.getString(17)%>"></td>
        </tr>
        <tr>
           <td><b>gradution Year</b><input readonly type="text" value="<%=rs.getString(19)%>"></td> 
        </tr>
        <tr>
            <td><b>number of back(s)</b><input readonly type="text" value="<%=rs.getString(20)%>"></td>
        </tr>     
     </table>
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
