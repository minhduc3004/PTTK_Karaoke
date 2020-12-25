<%-- 
    Document   : doSuaMh.jsp
    Created on : Dec 6, 2020, 10:40:32 PM
    Author     : DucVu
--%>

<%@page import="java.util.Map"%>
<%@page import="Model.Item,DAO.ItemDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
    String id = request.getParameter("idItem");
    Item item = new Item();
    item.setId(Integer.parseInt(id));
    item.setName(request.getParameter("inputName"));
    item.setType(request.getParameter("inputType"));
    item.setDess(request.getParameter("inputDesc"));
    item.setPrice(Float.parseFloat(request.getParameter("inputPrice")));
//    System.out.println(item.toString());
    ItemDao itemDAO = new ItemDao();
    itemDAO.update(item);
    response.sendRedirect("gdSuaMh.jsp?action=sua&&idItem="+item.getId()+"");
%>
