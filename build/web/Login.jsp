<%-- 
    Document   : Login
    Created on : Dec 1, 2020, 2:44:43 PM
    Author     : LEGION
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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="row d-flex justify-content-center" style="margin-top: 100px"><h1> Welcome to PTTK Karaoke </h1></div>
            <div class="row d-flex justify-content-center">
                <form action="doLogin.jsp" method="post">
                    <table style="with: 80%; margin-top: 100px">
                        <tr>
                            <td>UserName</td>
                            <td><input type="text" name="username" style="margin-left: 10px"></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="password" name="password" style="margin-left: 10px"></td>
                        </tr>
                    </table>
                    <div class="row justify-content-center" style="margin-top: 20px"><input type="submit" value="Submit" /></div>
                </form>
            </div>
        </div>
    </body>
</html>
