<%-- 
    Document   : viewjobs
    Created on : 22 May, 2023, 3:09:31 PM
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
        <title>View Job Page</title>
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
            .flex-container{
                width: 100%;
                height: auto;
                display: flex;
                flex-direction: column;
                justify-content: center;
                
            }
            .flex-box{
                width: 310px;
                height: 350px;
                background: linear-gradient(purple,red);
                color: white;
                line-height: 20px;
                border-radius: 20px;
                margin-left: 45%;
                padding-left: 90px;
            }
            .btn :hover{
                cursor: pointer;
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
            <h1><b>View Jobs</b></h1>
        </div>
        <hr> 
        <%
        try
       {
           Statement st = DBConnector.getStatement();
           
           String query = "SELECT * FROM jobDetails";
           ResultSet rs = st.executeQuery(query);
        %>
        
        
        <%
          while(rs.next())
          {
     
        %>
         <div class="flex-container">
             <div class="flex-box">
        <table>
       
        <tr>
            <td><b>Job Title</b><br><input readonly type="text" value="<%=rs.getString(1)%>"></td>
        </tr>
        <tr>
            <td><b>Company Name</b><br><input readonly type="text" value="<%=rs.getString(2)%>"></td>
        </tr>
        <tr>
            <td><b>Job Type</b><br><input readonly type="text" value="<%=rs.getString(3)%>"></td>
        </tr>
         <tr>
            <td><b>Skills</b><br><input readonly type="text" value="<%=rs.getString(4)%>"></td>
        </tr> 
        <tr>
            <td><b>City</b><br><input readonly type="text" value="<%=rs.getString(5)%>"></td>
        </tr>
        <tr>
            <td><b>Job Description</b><br><input readonly type="text" value="<%=rs.getString(6)%>"></td>
        </tr>
        <tr>
            <td><a href="jobapply.jsp" class="btn"><button >apply now</button></a></td>
        </tr>
     </table>
        </div>
        <br><br><br>
        </div>
         <%
           }
           }
            catch(SQLException e)
        {
            System.out.println(e);
        }
         %>
    </body>
</html>
