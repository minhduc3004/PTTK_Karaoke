<%-- 
    Document   : MainCustomerView
    Created on : Dec 5, 2020, 9:39:04 PM
    Author     : LEGION
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Model.*,DAO.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Customer client = new Customer();
            client = (Customer) request.getAttribute("client_id");
//            System.out.println(client);
        %>
        <h1>Hello Customer <%= request.getAttribute("client_id") %>!</h1>
    </body>
</html>
