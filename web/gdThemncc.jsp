<%-- 
    Document   : gdThemncc
    Created on : Dec 8, 2020, 11:14:23 AM
    Author     : DucVu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <div class="row" style="margin-top: 100px"><h1>Nhập thông tin nhà cung cấp</h1></div>
            <form action="doThemncc.jsp" method="POST">
                <table class="table" style="margin-top: 30px">
                    <tr>
                        <th scope="col">Tên</th>
                        <th scope="col"><input type="text" name="inputName"></th>
                    </tr>
                    <tr>
                        <th scope="col">Địa chỉ</th>
                        <th scope="col"><input type="text" name="inputAdd"></th>
                    </tr>
                    <tr>
                        <th scope="col">Số điện thoại</th>
                        <th scope="col"><input type="text" name="inputPhone"></th>
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
