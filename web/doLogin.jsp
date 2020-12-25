<%-- 
    Document   : doLogin
    Created on : Dec 5, 2020, 11:36:26 PM
    Author     : LEGION
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Model.*,DAO.*" %>

<%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            UserDao dao = new UserDao();

            if (username.isEmpty() || password.isEmpty()) {
                response.sendRedirect("Login.jsp");
            } else if (dao.checkLogin(user)) {
                if (user.getRole().equalsIgnoreCase("customer")) {
                    response.sendRedirect("MainCustomerView.jsp");
                } else if (user.getRole().equalsIgnoreCase("warehousemanager")) {
                    session.setAttribute("user", user);
                    response.sendRedirect("gdChinhQLK.jsp");
                }else if (user.getRole().equalsIgnoreCase("manager")){
                    session.setAttribute("user", user);
                    response.sendRedirect("gdChinhNVQL.jsp");
                }else {
                    response.sendRedirect("index.jsp");
                }
            } else {
                response.sendRedirect("Login.jsp");
            }
%>