<%-- 
    Document   : candidatereport
    Created on : 24 May, 2023, 2:19:01 PM
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
        <title>Candidate Report Page</title>
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
            .topheading{
                background-color: #63C5DA;
                height: 100px;
                width: 100%;
                text-align: center;
                color: white;
                margin: auto;
                padding: auto;
            }
            table tr
            {
               display: flex;
               padding: 15px;
               justify-content: space-between;
            }
            table
           {
               text-align: center;
               margin: auto;
           }
           th
            {
               padding-left: 15px;
               padding-right: 150px;
            }
            td{
                padding: 15px;
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
        <div class="topheading">
            <h1><b>Candidate Report</b></h1>
        </div>
        <hr>
        <%
        try
       {
           Statement st = DBConnector.getStatement();
           
           String query = "SELECT * FROM candidate";
           ResultSet rs = st.executeQuery(query);
        %>
        <table>
        <tr>
            <th><b>Name</b></th>
            <th><b>Enrollment</b></th>
            <th><b>Email</b></th>
            <th><b>Contact</b></th>
            <th><b>Skills</b></th>
            <th><b>Tenth %</b></th>
            <th><b>Twelth %</b></th>
            <th><b>Back(s)</b></th>
        </tr>
    </table>
        
        
        <%
          while(rs.next())
          {
     
        %>
        <table>
         </tr>
        <tr>
            <td><input readonly type="text" value="<%=rs.getString(1)%>"></td>
            <td><input readonly type="text" value="<%=rs.getString(2)%>"></td>
            <td><input readonly type="text" value="<%=rs.getString(3)%>"></td>
            <td><input readonly type="text" value="<%=rs.getString(4)%>"></td>
            <td><input readonly type="text" value="<%=rs.getString(5)%>"></td>
            <td><input readonly type="text" value="<%=rs.getString(6)%>"></td>
            <td><input readonly type="text" value="<%=rs.getString(7)%>"></td>
            <td><input readonly type="text" value="<%=rs.getString(8)%>"></td>
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
    </body>
</html>
