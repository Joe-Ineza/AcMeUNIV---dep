<%-- 
    Document   : registerSignUp
    Created on : Mar 21, 2023, 11:57:12 AM
    Author     : joe7n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.acmeuniv.model.SignUp"%>
<%@page import="com.acmeuniv.services.SignUpService"%>
<%@page import="com.acmeuniv.services.SignUpServiceInterface"%>
<jsp:useBean id="signUpBean" class="com.acmeuniv.beans.SignUpBean" scope="request" />
<%
    try {

        SignUp signUp = new SignUp();

        signUp.setEmail(request.getParameter("email"));
        System.out.println(request.getParameter("email"));
        signUp.setPassword(request.getParameter("password1"));
        signUp.setIsManage("false");

        SignUpServiceInterface sign = new SignUpService();
        
        sign.createSignUp(signUp);
        signUpBean.clear();
        request.getRequestDispatcher("logIn.jsp").forward(request, response);
    } catch (Exception e) {
        request.getRequestDispatcher("signUp.jsp").forward(request, response);
    }
%>


