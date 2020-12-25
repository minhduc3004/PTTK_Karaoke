<%-- 
    Document   : gdXemthongketong
    Created on : Dec 7, 2020, 9:41:16 PM
    Author     : DucVu
--%>

<%@page import="DAO.ItemStatDao,Model.ItemStat,java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ItemStatDao itemStatDao = new ItemStatDao();
    String startDate = request.getParameter("startdate");
    String endDate = request.getParameter("enddate");
    session.setAttribute("start", startDate);
    session.setAttribute("end", endDate);
    System.out.println("Bat dau : " + startDate + "\n" + "Ket thuc : " + endDate);
    ArrayList<ItemStat> listStat = itemStatDao.getDSTK(startDate, endDate);
    System.out.println("Size: " + listStat.size());
    long tong = 0;
    for (int i = 0; i < listStat.size(); i++) {
        tong += listStat.get(i).getTotal();
    }
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
            <div class="row d-flex justify-content-center" style="margin-bottom: 50px"><h2>Thống kê tổng quát</h2></div>
            <div class="row d-flex justify-content-center" style="margin-top: 20px">
                <table class="table">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">STT</th>
                            <th scope="col">Id</th>
                            <th scope="col">Ten</th>
                            <th scope="col">Luong tieu thu</th>
                            <th scope="col">Doanh thu</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%for (int i = 0; i < listStat.size(); i++) {%>
                        <form action="gdXemthongkerieng.jsp" method="POST">
                        <tr>
                            <th><%=(i + 1)%></th>
                            <th><input type="hidden" name="inputId" value="<%=listStat.get(i).getId()%>"><%=listStat.get(i).getId()%></th>
                            <th><%=listStat.get(i).getName()%></th>
                            <th><%=listStat.get(i).getQuantity()%></th>
                            <th><%=listStat.get(i).getTotal()%></th>
                        <th><input type="submit" value="Xem"></th>
                    </form>
                        </tr>
                        <% }%>
                    </tbody>
                </table>
                <div class="row d-flex justify-content-center"><h3>Tong doanh thu <%=tong%></h3></div>
            </div>
        </div>
    </body>
</html>
