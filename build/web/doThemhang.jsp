<%-- 
    Document   : doThemhang.jsp
    Created on : Dec 7, 2020, 9:27:46 AM
    Author     : DucVu
--%>

<%@page import="Model.Invoice"%>
<%@page import="Model.Item,DAO.ItemDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
    String action = request.getParameter("action");
    Item item = new Item();
    item.setName(request.getParameter("inputName"));
    item.setDess(request.getParameter("inputDesc"));
    item.setType(request.getParameter("inputType"));
    item.setPrice(Float.parseFloat(request.getParameter("inputPrice")));
    ItemDao itemDao = new ItemDao();
    itemDao.add(item);
    if(action.equalsIgnoreCase("nhaphang")) response.sendRedirect("gdTimhangnhap.jsp");
    else response.sendRedirect("gdChinhQLH.jsp");
%>
