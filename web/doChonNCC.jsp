<%-- 
    Document   : doChonNCC
    Created on : Dec 7, 2020, 3:03:37 PM
    Author     : DucVu
--%>

<%@page import="Model.Supplier"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int id = Integer.parseInt(request.getParameter("inputIdNcc"));
    System.out.println("ID: "+id);
    session.setAttribute("idNcc", id);
    response.sendRedirect("gdDSHangnhap.jsp?action=chonxongncc");
%>