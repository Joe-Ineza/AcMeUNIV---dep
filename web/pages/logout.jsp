<%-- 
    Document   : logout
    Created on : Mar 24, 2023, 2:01:41 PM
    Author     : joe7n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //Http 1.1
    response.setHeader("Pragma", "no-cache"); //For older Http Versions (Http 1.0
    response.setHeader("Expires","0"); //For Proxies
    session.removeAttribute("user");
    request.getRequestDispatcher("logIn.jsp").forward(request, response);
%>
