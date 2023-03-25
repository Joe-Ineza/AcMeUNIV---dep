<%-- 
    Document   : itAdmin
    Created on : Mar 21, 2023, 11:49:56 AM
    Author     : joe7n
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.acmeuniv.services.SignUpService"%>
<%@page import="com.acmeuniv.services.SignUpServiceInterface"%>
<%@page import="com.acmeuniv.model.SignUp"%>
<link href="../css/tablefrmt.css" rel="stylesheet" type="text/css"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<body style="background-image: url('../images/pexels-pixabay-35888_edited.jpg');">
<br><br><br><br>

<center><p><strong style="color:sandybrown ; font-size: 30px; font-weight: bold; ">${message}</strong></p></center>
<div class="wrapper">
    <div style="overflow: auto; height: 500px; width: 1000px;">
    <div class="table">
        <div class="row header blue">
            <div class="cell">
                Email
            </div>
<!--            <div class="cell">
                password
            </div>-->
            <div class="cell">
                isManager
            </div>
             
            <div class="cell">
                Action
            </div>

        </div>

        <%
            List<SignUp> signn = new ArrayList<SignUp>();
            SignUpServiceInterface signserv = new SignUpService();
            signn = signserv.findAll();

            for (SignUp sig : signn) {
        %>
        <div class="row">
            <div class="cell" data-title="Email">
                <%=sig.getEmail()%>
            </div>
<!--            <div class="cell" data-title="Password">
             
            </div>-->
            <div class="cell" data-title="IS MANAGER">
                <%=sig.isIsManage()%>
            </div>
            
            <div class="cell" data-title="Action">
                <a href="editItAdmin.jsp?email=<%=sig.getEmail()%>&action=Update">Edit</a>
                <a href="editItAdmin.jsp?email=<%=sig.getEmail()%>&action=Delete">Delete</a>
            </div>
        </div>
        <%}%>
    </div>
    </div>
</div>
</body>