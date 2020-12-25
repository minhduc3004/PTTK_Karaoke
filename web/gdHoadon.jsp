<%-- 
    Document   : gdHoadon.jsp
    Created on : Dec 7, 2020, 3:55:35 PM
    Author     : DucVu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.ItemInvoice,Model.Item"%>
<%@page import="Model.Invoice"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Invoice invoice = (Invoice) session.getAttribute("invoice");
    ArrayList<ItemInvoice> listItem = invoice.getItemInvoice();
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
            <div class="row justify-content-center"><h1>Hoa don</h1></div>
            <div class="row d-flex justify-content-center">
                <table class="table">
                    <thead>
                        <tr>
                            <th>TT</th>
                            <th>Ten hang</th>
                            <th>Loai</th>
                            <th>Gia</th>
                            <th>So luong</th>
                            <th>Thanh tien</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            if (listItem != null) {
                                for (int i = 0; i < listItem.size(); i++) {
                        %>
                        <tr>
                            <td><%=(i + 1)%> </td>
                            <td><%=listItem.get(i).getItem().getName()%></td>
                            <td><%=listItem.get(i).getItem().getType()%></td>
                            <td><%=listItem.get(i).getPrice()%></td>
                            <td><%=listItem.get(i).getQuantity()%></td>
                            <td><%=listItem.get(i).getTotal()%></td>
                        </tr>
                        <% }
                            }%>
                    </tbody>
                </table>
            </div>
            <div class="row justify-content-center" style="margin-top: 10px">Tổng tiền : <%=invoice.getTotal()%></div>
            <div class="row justify-content-center" style="margin-top: 10px">Nhà cung cấp : <%=invoice.getSuppp().getName()%></div>
            <div class="row justify-content-center" style="margin-top: 10px">Nhân viên nhập kho : <%=invoice.getManager().getName()%></div>
            <div class="row justify-content-center" style="margin-top: 10px">Thời gian : <%=session.getAttribute("time")%></div>
        </div>
    </body>
</html>
