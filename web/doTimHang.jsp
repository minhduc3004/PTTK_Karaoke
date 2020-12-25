<%-- 
    Document   : doTimHang.jsp
    Created on : Dec 6, 2020, 8:31:27 PM
    Author     : DucVu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Item"%>
<%@page import="DAO.ItemDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String itemName = request.getParameter("item_name");
    System.out.println("Tu khoa :"+itemName);
    ItemDao itemDAO = new ItemDao();
    ArrayList<Item> listItem = ItemDao.getListItem(itemName);
    session.setAttribute("listItem", listItem);
    String action=request.getParameter("action");
    System.out.println("Action: "+action);
    if(action.equalsIgnoreCase("sua")) response.sendRedirect("gdTimhang.jsp");
    else if(action.equalsIgnoreCase("xoa")) response.sendRedirect("gdTimhangxoa.jsp");
%>
