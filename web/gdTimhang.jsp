
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Item"%>
<%-- 
    Document   : gdTimhang
    Created on : Dec 6, 2020, 4:12:31 PM
    Author     : DucVu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Item> listItem = (ArrayList<Item>) session.getAttribute("listItem");
%>
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
            <div class="row justify-content-center"><h1>Tìm mặt hàng</h1></div>
            <form action="doTimHang.jsp?action=sua" method="POST">
                <div class="row d-flex justify-content-center" style="margin-top: 50px">
                    Tên hàng <input type="text" name ="item_name" style="margin-left: 5px">
                    <input type="submit" value="Tìm">
                </div>
            </form>

            <div class="row d-flex justify-content-center" style="margin-top: 20px">
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
                            <td><a href="gdSuaMh.jsp?action=sua&&idItem=<%=listItem.get(i).getId()%>">Sua</a></td>
                        </tr>
                        <% }
                            }%>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
