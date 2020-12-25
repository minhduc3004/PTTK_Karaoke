<%-- 
    Document   : doNhaphang.jsp
    Created on : Dec 7, 2020, 10:45:04 AM
    Author     : DucVu
--%>

<%@page import="Model.Invoice"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.ItemInvoice,Model.Item,Model.Supplier"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Invoice invoice=(Invoice) session.getAttribute("invoice");
    ItemInvoice itemInvoice = new ItemInvoice();
    int id=(int) session.getAttribute("idItem");
    ArrayList<Item> listItem=(ArrayList<Item>) session.getAttribute("listItem");
    Item item=listItem.get(id);
    System.out.println("Item o doNhaphang: "+item.toString());
    itemInvoice.setItem(item);
    itemInvoice.setQuantity(Integer.parseInt(request.getParameter("inputSL")));
    itemInvoice.setPrice(item.getPrice());
    itemInvoice.setTotal((long)item.getPrice()*itemInvoice.getQuantity());
    ArrayList<ItemInvoice> listItemInvoice = (ArrayList<ItemInvoice>) session.getAttribute("listItemInvoice");
//    System.out.println("ItemInvoice: "+itemInvoice.toString());
    itemInvoice.setInvoiceId(invoice.getId());
    listItemInvoice.add(itemInvoice);
    session.setAttribute("listItemInvoice", listItemInvoice);
//    System.out.println(session.getAttribute("invoice"));
//    System.out.println("Invoice: "+invoice.toString());
    invoice.addItem(itemInvoice);
    session.setAttribute("invoice", invoice);
    response.sendRedirect("gdDSHangnhap.jsp?action=themhangxong");
%>
