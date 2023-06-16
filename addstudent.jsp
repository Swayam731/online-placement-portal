 <%-- 
    Document   : admin
    Created on : 24 Feb, 2023, 5:36:12 PM
    Author     : swayam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add student Page</title>
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
            .container
            {
                width: 500px;
                height: 600px;
                background-color: #ffffff;
                text-align: center;
                border: 3px solid rgb(105 106 106);
                border-radius: 7px;
                margin: 80px auto;
                padding: 50px auto;
                box-sizing: border-box;
            }
            .formerror{
                color: red;
            }
        </style>
        <script type="text/javascript">
        function validate()
        {
            var enroll=document.addstudent.enrollment.value;
            if(enroll=="")
            {
                alert("enrollment number can't be null!");
                document.addstudent.enrollment.focus();
                return false;
            }
            if(enroll.length!=12)
            {
                alert("enrollment number must be 12 characters long!");
                document.addstudent.enrollment.focus();
                return false;
            }
            var branch = document.addstudent.branch.value;
            if(branch=="")
            {
                alert("branch can't be null!");
                document.addstudent.branch.focus();
                return false;
            }
            var fname = document.addstudent.fname.value;
            if(fname=="")
            {
                alert("first name can't be null!");
                document.addstudent.branch.focus();
                return false;
            }
            var lname = document.addstudent.lname.value;
            if(lname=="")
            {
                alert("last name can't be null!");
                document.addstudent.lname.focus();
                return false;
            }
            var fathername = document.addstudent.fathername.value;
            if(lname=="")
            {
                alert("fathername can't be null!");
                document.addstudent.fathername.focus();
                return false;
            }
            var mothername = document.addstudent.mothername.value;
            if(mothername=="")
            {
                alert("mothername can't be null!");
                document.addstudent.mothername.focus();
                return false;
            }
            var contact = document.addstudent.contact.value;
            if(contact=="")
            {
                alert("contact can't be null!");
                document.addstudent.contact.focus();
                return false;
            }
            if(contact.length!=10)
            {
                alert("contact must be 10 digit long!");
                document.addstudent.contact.focus();
                return false;
            }
            var email = document.addstudent.email.value;
            if(email=="")
            {
                alert("email can't be null!");
                document.addstudent.email.focus();
                return false;
            }
            if(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(addstudent.email.value))
            {
                return true;
            }
            else
            {
            alert("invalid Email!");
            document.addstudent.email.focus();
            return false;
            }
        }
        </script>
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
        
        <h1 class="heading" >welcome to placement management</h1>
        <div class="container">
            <h1>Add student!</h1>
            <form action="AddStudentChecker" name="addstudent" method="post">
            <table>
                
                <tr>
                    <td><b>Enrollment number :</b></td>
                    <td><input type="text" name="enrollment" id="enrollment" placeholder="enter enrollment no. here"><b><span class="formerror"></span></b></td>
                </tr>
                
                <tr>
                    <td><b>Branch :</b></td>
                    <td><input type="text" name="branch" placeholder="enter branch here"></td>
                </tr>
                
                <tr>
                    <td><b>FirstName :</b></td>
                    <td><input type="text" name="fname" placeholder="enter first name here"></td>
                </tr>
                <tr>
                    <td><b>LastName :</b></td>
                    <td><input type="text" name="lname" placeholder="enter last name here"></td>
                </tr>
                
                <tr>
                    <td><b>Father's Name :</b></td>
                    <td><input type="text" name="fathername" placeholder="enter father's name here"></td>
                </tr>
                
                <tr>
                    <td><b>Mother's Name :</b></td>
                    <td><input type="text" name="mothername" placeholder="enter mother's name here"></td>
                </tr>
                
                <tr>
                    <td><b>Gender :</b></td>
                    <td><input type="radio" name="gender" value="male" >Male<input type="radio" name="gender"  value="female">female</td>
                </tr>
                
                <tr>
                    <td><b>DOB :</b></td>
                    <td><input type="date" name="dob" placeholder="enter DOB here"></td>
                </tr>
                
                <tr>
                    <td><b>contact number :</b></td>
                    <td><input type="number" name="contact" placeholder="enter contact number here"></td>
                </tr>
                
                <tr>
                    <td><b>Email ID:</b></td>
                    <td><input type="email" name="email" placeholder="enter email here"></td>
                </tr>
                
                <tr>
                    <td><b>Address :</b></td>
                    <td><input type="text" name="address" placeholder="enter address here"></td>
                </tr>
                
                <tr>
                    <td><b>10th percentage :</b></td>
                    <td><input type="number" step="0.01" name="tenthpercent" placeholder="enter percentage here"></td>
                </tr>
                
                <tr>
                    <td><b>10th YOP :</b></td>
                    <td><input type="number" name="tenthyop" placeholder="enter YOP here"></td>
                </tr>
                
                <tr>
                    <td><b>12th percentage :</b></td>
                    <td><input type="number" step="0.01" name="twelthpercent" placeholder="enter percentage here"></td>
                </tr>
                
                <tr>
                    <td><b>12th YOP :</b></td>
                    <td><input type="number" name="twelthyop" placeholder="enter YOP here"></td>
                </tr>
                
                <tr>
                    <td><b>CGPA :</b></td>
                    <td><input type="number" step="0.01" name="cgpa" placeholder="enter CGPA here"></td>
                </tr>
                
                <tr>
                    <td><b>graduation year :</b></td>
                    <td><input type="number" name="gradyop" placeholder="enter graduation year here"></td>
                </tr>
                
                <tr>
                    <td><b>number of back :</b></td>
                    <td><input type="number" name="back" placeholder="enter back record here"></td>
                </tr>
                
                <tr>
                    <td class="btn" ><input type="submit" value="save" onclick="return validate();" ></td>
                    <td class="btn" ><input type="reset" value="reset" ></td>
                </tr>
            </table>
        </form>
            </div>
        
    </body>
</html>
