<%-- 
    Document   : editItAdmin
    Created on : Mar 21, 2023, 11:18:34 PM
    Author     : joe7n
--%>
<%@page import="com.acmeuniv.model.SignUp"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.acmeuniv.services.SignUpService"%>
<%@page import="com.acmeuniv.services.SignUpServiceInterface" %>
<jsp:useBean id="signUpBean" class="com.acmeuniv.beans.SignUpBean" scope="request" />
<%
        signUpBean.setEmail(request.getParameter("email"));
        String action = request.getParameter("action");                                   
        SignUpServiceInterface sig = new SignUpService();
        SignUp sign = sig.findSignUp(signUpBean.getEmail());
        signUpBean.setPassword(sign.getPassword());
        signUpBean.setIsManage(sign.isIsManage());
        
        request.setAttribute("action",action);
        request.getRequestDispatcher("itAdminAccess.jsp").forward(request, response);
    
%>