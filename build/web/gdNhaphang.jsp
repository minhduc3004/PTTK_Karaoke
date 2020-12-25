<%-- 
    Document   : gdNhaphang.jsp
    Created on : Dec 7, 2020, 11:08:30 AM
    Author     : DucVu
--%>

<%@page import="java.util.ArrayList,Model.Item,Model.Supplier"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Item> listItem = (ArrayList<Item>) session.getAttribute("listItem");
    ArrayList<Supplier> listSupp = (ArrayList<Supplier>) session.getAttribute("listSupp");
    int id = Integer.parseInt(request.getParameter("inputIdItem"));
    session.setAttribute("idItem", id);
    Item item = listItem.get(id);
    System.out.println("Hang dinh nhap: " + item.toString());
//    Supplier supp=listSupp.get((int)session.getAttribute("idNcc"));
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
            <div class="row justify-content-center" style="margin-top: 100px"><h1>Nhập hàng</h1></div>
            <div class="row d-flex justify-content-center">
                <table class="table">
                    <tr>
                        <th>Tên hàng</th>
                        <th>Giá</th>
                        <th>Mô tả</th>
                    </tr>
                    <tr>
                        <th><%=item.getName()%></th>
                        <th><%=item.getPrice()%></th>
                        <th><%=item.getDess()%></th>
                    </tr>
                </table>
                <div class="row d-flex justify-content-center" style="margin-top: 10px">
                    <form action="doNhaphang.jsp" method="POST">
                        Số lượng <input type="text" name="inputSL" style="margin-left: 5px" > <input type="submit" value="OK" style="margin-left: 5px">
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
