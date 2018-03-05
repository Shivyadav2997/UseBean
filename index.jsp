<%-- 
    Document   : index
    Created on : 05-Mar-2018, 00:14:13
    Author     : Bhushan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Dashboard.jsp">
        <input type ="text" placeholder="Username" name="uname">
        <input type="password" placeholder="Password" name="upass">
        <select name="role">
            <option value="Admin">Admin</option>
            <option value="User">User</option>
        </select>
        <button type="Submit">Submit</button>
        </form>
    </body>
</html>
