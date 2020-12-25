<%-- 
    Document   : doTimhangnhap
    Created on : Dec 7, 2020, 10:27:28 AM
    Author     : DucVu
--%>

<%@page import="Model.Supplier"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Item"%>
<%@page import="DAO.ItemDao,DAO.SuppDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ItemDao itemDao = new ItemDao();
    SuppDao suppDao = new SuppDao();
    String itemName=request.getParameter("item_name");
    String suppName=request.getParameter("sup_name");
    ArrayList<Item> listItem = itemDao.getListItem(itemName);
    ArrayList<Supplier> listSupp=suppDao.getListSupp(suppName);
    session.setAttribute("listItem", listItem);
    session.setAttribute("listSupp", listSupp);
    System.out.println(listItem.size()+" "+listSupp.size());
    response.sendRedirect("gdTimhangnhap.jsp?action=timxong");
%>
