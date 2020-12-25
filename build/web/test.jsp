<%-- 
    Document   : test
    Created on : Dec 8, 2020, 12:24:49 PM
    Author     : DucVu
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Date date=new Date();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%=date.toString()%></h1>
    </body>
</html>
