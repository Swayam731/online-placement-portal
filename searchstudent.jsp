<%-- 
    Document   : searchstudent
    Created on : 1 Mar, 2023, 6:36:22 PM
    Author     : swaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Student</title>
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
            }
           table
           {
               text-align: center;
               margin: auto;
           }
             .container2
            {
                width: 500px;
                height: 400px;
                text-align: center;
                background-color: #ffffff;
                border: 4px solid orange;
                border-radius: 7px;
                margin: 20px auto;
                box-sizing: border-box;
            }
            table tr
            {
               display: flex;
               padding: 15px;
               justify-content: space-between;
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
      <div class="container2">
          <form action="SearchingChecker" method="post">
            <h2 class="heading">Search student</h2>
            <table>
                <tr>
                    <td>10th percent :</td>
                    <td><input type="number" name="tenthpercent" ></td>
                </tr>
                <tr>
                    <td>12th percent :</td>
                    <td><input type="number" name="twelthpercent" ></td>
                </tr>
                <tr>
                    <td>CGPA :</td>
                    <td><input type="number" name="cgpa" ></td>
                </tr>
                 <tr>
                    <td>BACK :</td>
                    <td><input type="number" name="back" ></td>
                </tr>
                <tr>
                    <td><input type="submit" value="search" ></td>
                </tr>
            </table>
         </form>
        </div>
    </body>
</html>
