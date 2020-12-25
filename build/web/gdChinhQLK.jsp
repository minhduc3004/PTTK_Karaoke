<%-- 
    Document   : gdChinhQLK.jsp
    Created on : Dec 7, 2020, 9:35:06 AM
    Author     : DucVu
--%>

<%@page import="Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User user = (User) session.getAttribute("user");

%>
<!DOCTYPE html>
<html>
    <header>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link href="../statics/css/gdTimKiemPhongHat.css" rel="stylesheet"/>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </header>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container" style="margin-top: 200px">
            <div class="row justify-content-center"><h1>WELCOME</h1></div>
            <div class="row justify-content-center" style="margin-top: 50px"><a href="gdDSHangnhap.jsp">Nhập hàng</a></div>
            <div class="row justify-content-center" style="margin-top: 10px"><a href="">Xem hóa đơn</a></div>
        </div>
    </body>
</html>
