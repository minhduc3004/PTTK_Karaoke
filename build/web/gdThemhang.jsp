<%-- 
    Document   : gdThemhang.jsp
    Created on : Dec 7, 2020, 9:21:36 AM
    Author     : DucVu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String action = request.getParameter("action");
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
            <div class="row" style="margin-top: 100px"><h1>Nhập thông tin mặt hàng</h1></div>
            <form action="doThemhang.jsp?action=<%=action%>" method="POST">
                <table class="table" style="margin-top: 30px">
                    <tr>
                        <th scope="col">Tên</th>
                        <th scope="col"><input type="text" name="inputName"></th>
                    </tr>
                    <tr>
                        <th scope="col">Loại</th>
                        <th scope="col"><input type="text" name="inputType"></th>
                    </tr>
                    <tr>
                        <th scope="col">Giá</th>
                        <th scope="col"><input type="text" name="inputPrice"></th>
                    </tr>
                    <tr>
                        <th scope="col">Mô tả</th>
                        <th scope="col"><input type="text" name="inputDesc"></th>
                    </tr>
                </table>
                <button class="btn"><input type="submit" value="Thêm"></button>
            </form>
        </div>
    </body>
</html>
