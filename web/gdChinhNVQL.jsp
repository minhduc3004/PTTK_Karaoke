<%-- 
    Document   : gdChinhNVQL
    Created on : Dec 6, 2020, 10:35:30 AM
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
        <div class="container">
            <div class="row justify-content-center" style="margin-top: 100px"><h1>Xin chào <%=user.getName()%></h1></div>
            <div class="row justify-content-center" style="margin-top: 100px"><button class="btn"><a href="QuanLyNhaHang.jsp">Quản lý nhà hàng</a></button></div>
            <div class="row justify-content-center" style="margin-top: 5px"><button class="btn"><a href="">Quản lý khách hàng</a></button></div>
            <div class="row justify-content-center" style="margin-top: 5px"><button class="btn"><a href="">Quản lý phòng hát</a></button></div>
            <div class="row justify-content-center" style="margin-top: 5px"><button class="btn"><a href="gdChinhQLH.jsp">Quản lý mặt hàng</a></button></div>
            <div class="row justify-content-center" style="margin-top: 5px"><button class="btn"><a href="">Quản lý giờ làm việc</a></button></div>
            <div class="row justify-content-center" style="margin-top: 5px"><button class="btn"><a href="gdChonthongke.jsp">Xem thống kê</a></button></div>
        </div>
    </body>
</html>
