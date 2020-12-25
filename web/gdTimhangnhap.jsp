<%-- 
    Document   : gdTimhangnhap
    Created on : Dec 7, 2020, 9:49:38 AM
    Author     : DucVu
--%>

<%@page import="java.util.ArrayList,Model.Item,Model.Supplier"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
//    int idItem,idNcc;
//    System.out.println(session.getAttribute("idItem")+" "+session.getAttribute("idNcc"));
    String action = request.getParameter("action");
    ArrayList<Item> listItem;
    ArrayList<Supplier> listSupp;
    if (action == null) {
        listItem = new ArrayList<Item>();
        listSupp = new ArrayList<Supplier>();
        session.setAttribute("listItem", listItem);
        session.setAttribute("listSupp", listSupp);
    } else {
        listItem = (ArrayList<Item>) session.getAttribute("listItem");
        listSupp = (ArrayList<Supplier>) session.getAttribute("listSupp");
    }
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
            <div class="row justify-content-center" style="margin-top: 50px"><h1>Tìm mặt hàng</h1></div>
            <div class="row d-flex justify-content-center" style="margin-top: 20px">
                <form action="doTimhangnhap.jsp" method="POST">
                    Tên hàng <input type="text" name ="item_name" style="margin-left: 5px"> 
                    <input type="submit" value="Tìm" style="margin-left: 5px">
                    <button class="btn" style="margin-left: 5px"><a href="gdThemhang.jsp?action=nhaphang">Thêm hàng mới</a></button>
                </form>
            </div>
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
                    <form action="gdNhaphang.jsp" method="POST">
                        <tr>
                            <td><input type="hidden" name="inputIdItem" value="<%=i%>"><%=(i + 1)%></td>
                            <td><%=listItem.get(i).getName()%></td>
                            <td><%=listItem.get(i).getType()%></td>
                            <td><%=listItem.get(i).getPrice()%></td>
                            <td><%=listItem.get(i).getDess()%></td>
                            <td><input type="submit" value="Chon"></td>
                        </tr>
                    </form>
                    <% }
                    }%>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>