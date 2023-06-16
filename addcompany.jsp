<%-- 
    Document   : addcompany
    Created on : 22 May, 2023, 10:58:22 AM
    Author     : swayam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Company Page</title>
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
       <div class="topheading">
            <h1><b>Add Company Page</b></h1>
        </div>
        <hr>
        <div class="container">
          <form action="AddCompanyChecker" method="post">
            <h2 class="heading">Add Company</h2>
            <table>
                <tr>
                    <td>Name :</td>
                    <td><input type="text" name="name" ></td>
                </tr>
                <tr>
                    <td>Email :</td>
                    <td><input type="email" name="email" ></td>
                </tr>
                <tr>
                    <td>Contact No :</td>
                    <td><input type="number" name="contact" ></td>
                </tr>
                 <tr>
                    <td>Website :</td>
                    <td><input type="text" name="website" ></td>
                </tr>
                <tr>
                    <td>City :</td>
                    <td><input type="text" name="city" ></td>
                </tr>
                <tr>
                    <td>State :</td>
                    <td><input type="text" name="state" ></td>
                </tr>
                <tr>
                    <td>Country :</td>
                    <td><input type="text" name="country" ></td>
                </tr>
                <tr>
                    <td>Address :</td>
                    <td><input type="text" name="address" ></td>
                </tr>
                <tr>
                    <td>Description :</td>
                    <td><input type="text" name="description" ></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Add Company" ></td>
                </tr>
            </table>
         </form>
        </div>
    </body>
</html>
