<%-- 
    Document   : authentication
    Created on : Mar 21, 2023, 12:41:43 PM
    Author     : joe7n
--%>
<%@page import="com.acmeuniv.services.LoginService"%>
<%@page import="com.acmeuniv.services.LoginServiceInterface"%>
<%@page import="com.acmeuniv.model.SignUp"%>
<%--<%@page errorPage="error.jsp"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
//                    String referer = (String) request.getAttribute("origin");
//                    request.setAttribute("origin", referer);
//                    
//                    request.getRequestDispatcher("signIn.jsp").forward(request, response);
       
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                LoginServiceInterface logcred = new LoginService();
 
                if(logcred.verifyCredentials(email, password)== "stu_account"){
                    session.setAttribute("user",email);
//                    response.sendRedirect(request.getParameter("origin"));
                    request.setAttribute("message", "Welcome to admission portal");
                    request.getRequestDispatcher("priorAdmission.jsp").forward(request, response);
                   
                    //request.getRequestDispatcher("admission.jsp").forward(request, response);
                }
                else if(logcred.verifyCredentials(email, password)=="school_admin")
                {
                    session.setAttribute("user",email);
                    request.setAttribute("message", "Welcome to School Administration Dashboard");
                    request.getRequestDispatcher("schoolAdmin.jsp").forward(request, response);

                }
                else if(logcred.verifyCredentials(email, password)=="it_admin")
                {
                    session.setAttribute("user",email);
                    request.setAttribute("message", "Welcome to IT Administration Portal");
                    request.getRequestDispatcher("itAdmin.jsp").forward(request, response);
                }
                else if(logcred.verifyCredentials(email, password) == "no_account")
                {
                    request.setAttribute("message", "You have no account");
                    request.getRequestDispatcher("logIn.jsp").forward(request, response);
                    
                    //request.getRequestDispatcher("signIn.jsp").forward(request, response);
 
                }
                else
                {
                    request.setAttribute("message", "something went wrong");
                    request.getRequestDispatcher("logIn.jsp").forward(request, response);
                }
      
      
         
    
%>
