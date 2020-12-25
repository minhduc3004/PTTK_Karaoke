<%-- 
    Document   : doXoahang.jsp
    Created on : Dec 7, 2020, 8:37:49 AM
    Author     : DucVu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ItemDao,Model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ItemDao itemDao = new ItemDao();
    int id = Integer.parseInt(request.getParameter("idItem"));
    ArrayList<Item> listItem = (ArrayList<Item>) session.getAttribute("listItem");
    itemDao.deleteItem(listItem.get(id).getId());
    listItem.remove(id);
    session.setAttribute("listItem", listItem);
    response.sendRedirect("gdTimhangxoa.jsp?action=xoaxong");
%>

