<%-- 
    Document   : gdDSHangnhap.jsp
    Created on : Dec 7, 2020, 9:36:42 AM
    Author     : DucVu
--%>

<%@page import="DAO.InvoiceDao"%>
<%@page import="Model.ItemInvoice,Model.Invoice,Model.Supplier,java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<ItemInvoice> listItem = null;
    Invoice invoice = null;
    Supplier supp = null;
    String action = request.getParameter("action");
    if (action == null) {
        listItem = new ArrayList<ItemInvoice>();
        session.setAttribute("listItemInvoice", listItem);
        invoice = new Invoice();
        InvoiceDao invoiceDao = new InvoiceDao();
        invoice.setId(invoiceDao.getID() + 1);
        session.setAttribute("invoice", invoice);
    } else if (action.equalsIgnoreCase("chonxongncc")) {
        ArrayList<Supplier> listSupp = (ArrayList<Supplier>) session.getAttribute("listSupp");
        int idSupp = ((int) session.getAttribute("idNcc"));
        supp = listSupp.get(idSupp);
        session.setAttribute("ncc", supp);
        listItem = (ArrayList<ItemInvoice>) session.getAttribute("listItemInvoice");
    } else if (action.equalsIgnoreCase("themhangxong")) {
        listItem = (ArrayList<ItemInvoice>) session.getAttribute("listItemInvoice");
        supp = (Supplier) session.getAttribute("ncc");
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
            <div class="row justify-content-center"><h1>Danh sách hàng nhập</h1></div>
            <div class="row d-flex justify-content-center" style="margin-top:20px">
                <table class="table">
                    <thead>
                        <tr>
                            <th>TT</th>
                            <th>Tên</th>
                            <th>Giá</th>
                            <th>Loại</th>
                            <th>Mô tả</th>
                            <th>Số lượng</th>
                            <th>Thành tiền</th>
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
                            <td><%=listItem.get(i).getItem().getPrice()%></td>
                            <td><%=listItem.get(i).getItem().getType()%></td>
                            <td><%=listItem.get(i).getItem().getDess()%></td>
                            <td><%=listItem.get(i).getQuantity()%></td>
                            <td><%=listItem.get(i).getTotal()%></td>
                        </tr>
                        <% }
                        }%>
                    </tbody>
                </table>
            </div>
            <%if (supp != null) {%>
            <div class="row justify-content-center">Nhà cung cấp <%=supp.getName()%></div>
            <%} else { %>
            <div class="row justify-content-center">Nhà cung cấp </div>
            <% }%>
            <br>
            <form action="doLuuhang.jsp" method="POST">
                <div class="row justify-content-center">Giảm giá <input type="text" name="inputSale" style="margin-left: 5px"></div>
                <div class="row justify-content-center" style="margin-top: 10px"><input type="submit" value="Lưu hàng"></div>
            </form>
            <div class="row justify-content-center" style="margin-top: 5px"><button class="btn" style="margin-top: 5px"><a href="gdTimNcc.jsp">Chọn nhà cung cấp</a></button></div>
            <div class="row justify-content-center"><button class="btn" style="margin-top: 5px"><a href="gdTimhangnhap.jsp">Nhập thêm hàng</a></button></div>
        </div>
    </body>
</html>
