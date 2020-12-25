<%-- 
    Document   : gdTimhangxoa.jsp
    Created on : Dec 7, 2020, 8:18:45 AM
    Author     : DucVu
--%>

<%@page import="java.util.ArrayList,Model.Item,DAO.ItemDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Item> listItem = (ArrayList<Item>) session.getAttribute("listItem");
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
            <div class="row justify-content-center" style="margin-top:50px"><h1>Tìm hàng xóa</h1></div>
            <div class="row d-flex justify-content-center" style="margin-top: 30px">
                <form action="doTimHang.jsp?action=xoa" method="POST">
                    Ten hang : <input type="text" name ="item_name" style="margin-left: 5px"> <input type="submit" value="Tìm" style="margin-left: 5px">
                </form>
            </div>
            <div class="row d-flex justify-content-center" style="margin-top: 10px">
                <table class="table">
                    <thead>
                        <tr>
                            <th>TT</th>
                            <th>Ten hang</th>
                            <th>Loai</th>
                            <th>Gia</th>
                            <th>Mo ta</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            if (listItem != null) {
                                for (int i = 0; i < listItem.size(); i++) {
                        %>
                        <tr>
                            <td><%=(i + 1)%> </td>
                            <td><%=listItem.get(i).getName()%></td>
                            <td><%=listItem.get(i).getPrice()%></td>
                            <td><%=listItem.get(i).getType()%></td>
                            <td><%=listItem.get(i).getDess()%></td>
                            <td><a href="doXoahang.jsp?idItem=<%=i%>">Xoa</a></td>
                        </tr>
                        <% }
                        }%>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
