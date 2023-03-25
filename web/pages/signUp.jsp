<%-- 
    Document   : signUp
    Created on : Mar 21, 2023, 11:48:52 AM
    Author     : joe7n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="signUpBean" class="com.acmeuniv.beans.SignUpBean" scope="request" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/stylelog.css"> 
        <title>signup</title>
    </head>
    <body id="containersign">
        <div id="box-2" class="box">
            <form action="registerAccount.jsp" method="post">
                <h2>Sign UP</h2>
                <div class="inputBox">
                    <input type="email" name="email" value="${signUpBean.email}" required>
                    <span>Email</span>
                    <i></i>
                </div>
                <div class="inputBox">
                    <input type="password" name="password1" value="${signUpBean.password}"  required>
                    <span>Password</span>
                    <i></i>
                </div>
                <div class="inputBox">
                    <input type="password" name="password2" required>
                    <span>Confirm Password</span>
                    <i></i>
                </div>
                <div class="links">
                <p>I already have an account <a href="logIn.jsp">Sign In</a></p>
                </div>
                <% if (request.getAttribute("action") == null) { %>
                <div>
                    <input type="submit" name="action" value="Register" class="formbold-btn" />
                </div>
                <%} else {%>
                <div>
                    <input type="submit" name="action" value="${action}" class="formbold-btn" />
                </div>
                <%}%>
                

            </form>
        </div>
    </body>
</html>
