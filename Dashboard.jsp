<%-- 
    Document   : Dashboard
    Created on : 05-Mar-2018, 00:15:29
    Author     : Bhushan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="db" class="beans.connectdb"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
        String uname = request.getParameter("uname");
        String upass = request.getParameter("upass");
        String role = request.getParameter("role");
        String qry = "Insert into user_details(username,userpwd,role) values('"+uname+"','"+upass+"','"+role+"')";
        if(db.insert(qry)){
            out.println("<a href='index.jsp'>Add new</a><br>");
            out.println("Inserted Succesfully");
            ResultSet rs = db.FetchData("select * from user_details");
    %>
    <table>
        <tr>
            <th>Username</th>
            <th>Password</th>
            <th>Role</th>
        </tr>
        <% while(rs.next()){ 
        %>
        <tr>
            <td><% out.println(rs.getString("username")); %></td>
            <td><% out.println(rs.getString("userpwd")); %></td>
            <td><% out.println(rs.getString("role")); }%></td>
        </tr>
    </table>
    <%
        }
        else{
            out.println("Error");
        }
    %>
    </body>
    </html>
