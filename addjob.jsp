<%-- 
    Document   : addjob
    Created on : 22 May, 2023, 10:48:27 AM
    Author     : swayam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Job Page</title>
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
                padding : auto;
            }
            .container{
                width: 500px;
                height: 450px;
                text-align: center;
                background-color: #e6e6e6;
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
            <h1><b>Add Job Page</b></h1>
        </div>
        <hr>
        <div class="container">
          <form action="AddJobChecker" method="post">
            <h2 class="heading">Add Job</h2>
            <table>
                <tr>
                    <td>JOB TITLE :</td>
                    <td><input type="text" name="title" ></td>
                </tr>
                <tr>
                    <td>SELECT COMPANY :</td>
                    <td><input type="text" name="selectcompany" ></td>
                </tr>
                <tr>
                    <td>JOB TYPE :</td>
                    <td><input type="text" name="jobtype" ></td>
                </tr>
                 <tr>
                    <td>SKILLS REQUIRED :</td>
                    <td><input type="text" name="skillsrequired" ></td>
                </tr>
                <tr>
                    <td>CITY :</td>
                    <td><input type="text" name="city" ></td>
                </tr>
                <tr>
                    <td>JOB DESCRIPTION :</td>
                    <td><input type="text" name="jobdescription" ></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Add Job" ></td>
                </tr>
            </table>
         </form>
        </div>
        
    </body>
</html>
