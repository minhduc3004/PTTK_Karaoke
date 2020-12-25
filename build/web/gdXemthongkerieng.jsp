<%-- 
    Document   : gdXemthongkerieng
    Created on : Dec 7, 2020, 10:11:17 PM
    Author     : DucVu
--%>

<%@page import="DAO.ItemStatDetailsDao,DAO.ItemDao,Model.ItemStatDetails,Model.Item,java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String start = (String) session.getAttribute("start");
    String end = (String) session.getAttribute("end");
    int id = Integer.parseInt(request.getParameter("inputId"));
    ItemStatDetailsDao itemStatDetailsDao = new ItemStatDetailsDao();
    ArrayList<ItemStatDetails> list = itemStatDetailsDao.getTKRieng(start, end, id);
    System.out.println("So luong tk rieng: "+list.size());
    long tong=0;
    for(int i=0;i<list.size();i++) tong+=list.get(i).getTotal();
    ItemDao itemDao = new ItemDao();
    Item item=itemDao.getItembyId(id);
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
            <div class="row d-flex justify-content-center" style="margin-bottom: 50px"><h2>Thống kê mặt hàng <%=item.getName()%></h2></div>
            <div class="row d-flex justify-content-center" style="margin-top: 20px">
                <table class="table">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">STT</th>
                            <th scope="col">Ngay</th>
                            <th scope="col">Id</th>
                            <th scope="col">Gia</th>
                            <th scope="col">So luong</th>
                            <th scope="col">Doanh thu</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%for (int i = 0; i < list.size(); i++) {%>
                        <tr>
                            <th><%=(i + 1)%></th>
                            <th><%=list.get(i).getDate()%></th>
                            <th><%=list.get(i).getId()%></th>
                            <th><%=list.get(i).getPrice()%></th>
                            <th><%=list.get(i).getQuantity()%></th>
                            <th><%=list.get(i).getTotal()%></th>
                        </tr>
                        <% }%>
                    </tbody>
                </table>
                <div class="row d-flex justify-content-center"><h3>Tong doanh thu <%=tong%></h3></div>
            </div>
        </div>
    </body>
</html>
