<%-- 
    Document   : logIn
    Created on : Mar 21, 2023, 11:49:03 AM
    Author     : joe7n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/stylelog.css"> 
        <title>login</title>
    </head>
    <body>
    <center><p>${message}</p></center>
    <div class="box">
        <form action="authentication.jsp" method="post">
<!--            <span class="borderLine"></span>-->
            <h2>Sign in</h2>
            <p>${message}</p> 
            <div class="inputBox">
                <input type="email" name="email" required>
                <span>Email</span>
                <i></i>
            </div>
            <div class="inputBox">
            <input type="password" name="password" required>
            <span>Password</span>
            <i></i>
            </div>
            <div class="links">
                <p>I have no account <a href="signUp.jsp">    Create One</a></p>
                
            </div>
            <input type="submit" value="Login">
            
<!--            <button type="submit"  class="submit-btn" >Log In</button>-->

        </form>
    </div>
</body>
</html>
