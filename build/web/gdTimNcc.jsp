<%-- 
    Document   : gdChonNcc.jsp
    Created on : Dec 7, 2020, 2:56:02 PM
    Author     : DucVu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Supplier"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String action = request.getParameter("action");
    ArrayList<Supplier> listSupp = null;
    if (action == null) {
        listSupp = new ArrayList<Supplier>();
        session.setAttribute("listSupp", listSupp);
    } else
        listSupp = (ArrayList<Supplier>) session.getAttribute("listSupp");
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
            <div class="row justify-content-center" style="margin-top: 20px"><h1>Tìm nhà cung cấp</h1></div>
            <div class="row d-flex justify-content-center" style="margin-top: 20px">
                <form action="doTimNcc.jsp" method="POST">
                    Ten NCC <input type="text" name="supp_name" style="margin-left: 5px"> 
                    <input type="submit" value="Tìm" style="margin-left: 5px">
                    <button class="btn" style="margin-left: 5px"><a href="gdThemncc.jsp">Thêm mới NCC</a></button>
                </form>
            </div>
            <div class="row d-flex justify-content-center" style="margin-top: 20px">
                <table class="table">
                    <thead>
                        <tr>
                            <th>TT</th>
                            <th>Ten NCC</th>
                            <th>Phone</th>
                            <th>Dia chi</th>
                            <th>Mo ta</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            if (listSupp != null) {
                                for (int i = 0; i < listSupp.size(); i++) {
                        %>
                    <form action="doChonNCC.jsp" method="POST">
                        <tr>
                            <td><input type="hidden" name="inputIdNcc" value="<%=i%>"><%=(i + 1)%> </td>
                            <td><%=listSupp.get(i).getName()%></td>
                            <td><%=listSupp.get(i).getPhone()%></td>
                            <td><%=listSupp.get(i).getAddress()%></td>
                            <td><%=listSupp.get(i).getDesc()%></td>
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
