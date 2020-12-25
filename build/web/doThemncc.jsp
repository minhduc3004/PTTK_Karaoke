<%-- 
    Document   : doThemncc
    Created on : Dec 8, 2020, 11:15:57 AM
    Author     : DucVu
--%>

<%@page import="DAO.SuppDao,Model.Supplier"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String name = request.getParameter("inputName");
    String address = request.getParameter("inputAdd");
    String phone = request.getParameter("inputPhone");
    String desc = request.getParameter("inputDesc");
    SuppDao suppDao = new SuppDao();
    Supplier supp = new Supplier();
    supp.setName(name);
    supp.setAddress(address);
    supp.setPhone(phone);
    supp.setDesc(desc);
    suppDao.addSupp(supp);
    response.sendRedirect("gdTimNcc.jsp");
%>