<%-- 
    Document   : gdChonthongke
    Created on : Dec 7, 2020, 8:58:12 PM
    Author     : DucVu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <header>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link href="../statics/css/gdTimKiemPhongHat.css" rel="stylesheet"/>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </header>
    
    <body>
        <div class="container">
            <div class="row d-flex justify-content-center" style="margin-bottom: 50px"><h2>Thống kê mặt hàng bán kèm</h2></div>
            <div class="row d-flex justify-content-center">
                <form action="gdXemthongketong.jsp" method="post">
                    <div class="row">
                        <div class="col-md-6"><label for="startdate">Ngày bắt đầu:</label></div>
                        <div class="col-md-6"><input type="date" id="birthday" name="startdate"></div>
                    </div>
                    <div class="row">
                        <div class="col-md-6"><label for="enddate">Ngày kết thúc:</label></div>
                        <div class="col-md-6"><input type="date" id="birthday" name="enddate"></div>
                    </div>
                    <div class="row d-flex justify-content-center" style="margin-top: 20px;">
                        <button class="btn btn-primary">Xem thống kê</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
