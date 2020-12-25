<%-- 
    Document   : gdSuaMh.jsp
    Created on : Dec 6, 2020, 10:05:38 PM
    Author     : DucVu
--%>

<%@page import="DAO.ItemDao,Model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  if (request.getParameter("action") == "sua") {%>
<div class="alert alert-success alert-dismissible">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Success!</strong> Indicates a successful or positive action.
</div>
<%}%>
<%
    ItemDao itemDAO = new ItemDao();
    int id = Integer.parseInt(request.getParameter("idItem"));
    Item item = ItemDao.getItembyId(id);
//    System.out.println("Id item muon sua: "+item.getId());
//    System.out.println(item.toString());
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
            <div class="row justify-content-center" style="margin-top: 100px"><h1>Sửa thông tin mặt hàng</h1></div>
            <div class="row d-flex justify-content-center" style="margin-top: 20px">

                <table class="table">
                    <thead>
                        <tr>
                            <td>Id</td>
                            <td>Ten mat hang</td>
                            <td>Gia</td>
                            <td>Loai</td>
                            <td>Mo ta</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><%=item.getId()%></td>
                    <form action="doSuaMh.jsp" method="Post">
                        <input type="hidden" value="<%=item.getId()%>" name="idItem">
                        <td><input type="text" value="<%=item.getName()%>" name="inputName"></td>
                        <td><input type="text" value="<%=item.getPrice()%>" name="inputPrice"></td>
                        <td><input type="text" value="<%=item.getType()%>" name="inputType"></td>
                        <td><input type="text" value="<%=item.getDess()%>" name="inputDesc"></td>
                        </tr>
                        </tbody>
                </table>
                <div class="row justify-content-center d-flex" style="margin-top: 10px">
                    <div class="col"><button class="btn"><input type="submit" value="Lưu"></button></div>
                    <div class="col"><button class="btn" onclick="history.back()">Quay lại</button></div>
                    <div class="col"><button class="btn"><a href="gdTimhang.jsp">Sửa tiếp</a></button></div>
                </div>
                </form>
            </div>
        </div>
    </body>
</html>
