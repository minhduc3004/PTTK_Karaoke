<%-- 
    Document   : doLuuhang.jsp
    Created on : Dec 7, 2020, 3:50:03 PM
    Author     : DucVu
--%>

<%@page import="java.util.Date"%>
<%@page import="Model.WarehouseManager"%>
<%@page import="Model.User"%>
<%@page import="Model.Supplier"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.ItemInvoice"%>
<%@page import="DAO.InvoiceDao"%>
<%@page import="Model.Invoice"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Invoice invoice=(Invoice)session.getAttribute("invoice");
    System.out.println("Invoice :"+invoice.toString());
    float sale=Float.parseFloat(request.getParameter("inputSale"));
    System.out.println("Sale: " +sale);
    invoice.setSale(sale);
    Supplier supp=(Supplier) session.getAttribute("ncc");
    System.out.println(supp.toString());
    invoice.setSuppp(supp);
    int total=0;
    for(int i=0;i<invoice.getItemInvoice().size();i++){
        total+=invoice.getItemInvoice().get(i).getTotal();
    }
    invoice.setTotal(total);
    User user = (User)session.getAttribute("user");
    WarehouseManager manager = new WarehouseManager();
    manager.setId(user.getId());
    manager.setName(user.getName());
    InvoiceDao invoiceDao = new InvoiceDao();
    String date = new Date().toString();
    session.setAttribute("time", date);
    invoice.setDate(date);
    invoice.setManager(manager);
    invoiceDao.add(invoice);
    response.sendRedirect("gdHoadon.jsp");
%>
