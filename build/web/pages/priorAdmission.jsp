<%-- 
    Document   : priorAdmission
    Created on : Mar 23, 2023, 10:03:04 PM
    Author     : joe7n
--%>

<%   
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //Http 1.1
    response.setHeader("Pragma", "no-cache"); //For older Http Versions (Http 1.0
    response.setHeader("Expires","0"); //For Proxies
//    System.out.println(session.getAttribute("user"));
    if(session.getAttribute("user")==null)
    {
        response.sendRedirect("logIn.jsp");
    }
    
    
            
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/styleadmiss.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="page">
            <div class="countdown-col col">
                <div class="time middle">
                    <span>
                        <div id="d">12</div>
                        Days
                    </span>
                    
                    <span>
                        <div id="h">06</div>
                        Hours
                    </span>
                    <span>
                        <div id="m">35</div>
                        Minutes
                    </span>
                    <span>
                        <div id="s">54</div>
                        Seconds
                    </span>
                </div>
                
            </div>
            <div class="newsletter-col col">
                <div class="newsletter middle">
                    <h2>You May apply for admission prior</h2>
                    <p style="color: #ea6153">April 10th 2023</p>
<!--                    <form action="schoolAdmin.jsp" method="post">-->
<a href="admission.jsp" style="text-decoration: none;"><input class="newsletter-btn" type="button" value="Apply for Admission"></a>
<!--                    </form>-->
                </div>
            </div>
        </div>
        <script src="../js/countdown.js"></script>
    </body>
</html>
