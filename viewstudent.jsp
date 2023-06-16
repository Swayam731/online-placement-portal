<%-- 
    Document   : viewstudent
    Created on : 12 Mar, 2023, 10:51:49 AM
    Author     : swayam
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VIEW STUDENT</title>
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
             .heading
            {
                text-align: center;
                font-weight: bold;
                color: #ed8611;
                padding-top: 80px;
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
         <h1 class="heading"> welcome to placement management</h1>
        <%
        try
       {
           Statement st = DBConnector.getStatement();
           
           String query = "SELECT * FROM studentinfo";
           ResultSet rs = st.executeQuery(query);
        %>
       <table>
        <tr>
            <th><b>enrollment</b></th>
            <th><b>username</b></th>
            <th><b>password</b></th>
            <th><b>branch</b></th>
            <th><b>first name</b></th>
            <th><b>last name</b></th>
            <th><b>father name</b></td>
            <th><b>mother name</b></td>
            <th><b>gender</b></th>
            <th><b>date of birth</b></th>
            <th><b>contact</b></th>
            <th><b>email</b></th>
            <th><b>address</b></th>
            <th><b>10th percent</b></th>
            <th><b>10th YOP</b></th>
            <th><b>12th percent</b></th>
            <th><b>12th YOP</b></th>
            <th><b>CGPA</b></th>
            <th><b>gradution Year</b></th>
            <th><b>number of back(s)</b></th>
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
            <td><input readonly type="text" value="<%=rs.getString(9)%>"></td>
            <td><input readonly type="text" value="<%=rs.getString(10)%>"></td>
            <td><input readonly type="text" value="<%=rs.getString(11)%>"></td>
            <td><input readonly type="text" value="<%=rs.getString(12)%>"></td>
            <td><input readonly type="text" value="<%=rs.getString(13)%>"></td>
            <td><input readonly type="text" value="<%=rs.getString(14)%>"></td>
            <td><input readonly type="text" value="<%=rs.getString(15)%>"></td>
            <td><input readonly type="text" value="<%=rs.getString(16)%>"></td>
            <td><input readonly type="text" value="<%=rs.getString(17)%>"></td>
            <td><input readonly type="text" value="<%=rs.getString(18)%>"></td>
            <td><input readonly type="text" value="<%=rs.getString(19)%>"></td>
            <td><input readonly type="text" value="<%=rs.getString(20)%>"></td>
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
