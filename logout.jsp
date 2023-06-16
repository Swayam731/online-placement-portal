<%-- 
    Document   : logout
    Created on : 25 Feb, 2023, 9:07:11 PM
    Author     : swaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
    </head>
    <body>
        <%
            session.invalidate();
            response.sendRedirect("login.html");
        %>
    </body>
</html>
