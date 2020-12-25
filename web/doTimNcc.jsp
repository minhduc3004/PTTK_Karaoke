<%-- 
    Document   : doTimNcc.jsp
    Created on : Dec 7, 2020, 3:07:30 PM
    Author     : DucVu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Supplier"%>
<%@page import="DAO.SuppDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    SuppDao suppDao = new SuppDao();
    String name=request.getParameter("supp_name");
    ArrayList<Supplier> listSupp = suppDao.getListSupp(name);
    session.setAttribute("listSupp", listSupp);
    response.sendRedirect("gdTimNcc.jsp?action=timxongncc");
%>
