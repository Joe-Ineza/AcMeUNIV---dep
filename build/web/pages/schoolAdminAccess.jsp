<%-- 
    Document   : admission
    Created on : Mar 21, 2023, 11:49:14 AM
    Author     : joe7n
--%>



<!DOCTYPE html>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //Http 1.1
    response.setHeader("Pragma", "no-cache"); //For older Http Versions (Http 1.0
    response.setHeader("Expires", "0"); //For Proxies
    if (session.getAttribute("user") == null) {
        response.sendRedirect("logIn.jsp");
    }


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="addBean" class="com.acmeuniv.beans.AdmissionBean" scope="request" />
<center><p>${message}</p></center>
<form action="schoolAdminManipulate.jsp" method="post">

    <input type="text" name="email" class="input-field" placeholder="Email Address" value="${addBean.email}" required><br>
    <input type="text" name="fname" class="input-field" placeholder="First Name" value="${addBean.firstName}" required><br>
    <input type="text" name="lname" class="input-field" placeholder="Last Name" value="${addBean.lastName}" required><br>
    <% if (addBean.getGender().equals("male")) { %>
    <select name="gender" value="${addBean.gender}">
        <option value="male">Male</option>
        <option value="female">Female</option>
    </select>    <br>
    <%} else {%>
    <select name="gender" value="${addBean.gender}">
        <option value="female">Female</option>
        <option value="male">Male</option>
    </select>    <br>
    <%}%>

    <input type="text" name="phoneN" class="input-field" placeholder="Phone Number" value="${addBean.phoneN}" required><br>
    <input type="text" name="locationA" class="input-field" placeholder="Location Address" value="${addBean.locationA}" required><br>

    <% if (addBean.getLevel_study().equals("undergraduate")) { %>
    <select name="level" value="${addBean.level_study}">
        <option value="undergraduate">Undergraduate</option>
        <option value="graduate">Graduate</option>
    </select> <br>
    <%} else {%>
    <select name="level" value="${addBean.level_study}">
        <option value="graduate">Graduate</option>
        <option value="undergraduate">Undergraduate</option>
    </select> <br>
    <%}%>


    <select name="faculty" value="${addBean.faculty}">
        <option value="IT">IT</option>
    </select> <br>

    <% if (addBean.getDepartment().equals("soft_eng")) { %>
    <select name="department" value="${addBean.department}">
        <option value="soft_eng">SOFTWARE ENGINEERING</option>
        <option value="info_man">INFORMATION MANAGEMENT</option>
        <option value="net_com">NETWORK COMMUNICATION</option>
    </select> <br>
    <%} else if (addBean.getDepartment().equals("info_man")) { %>
    <select name="department" value="${addBean.department}">
        <option value="info_man">INFORMATION MANAGEMENT</option>
        <option value="soft_eng">SOFTWARE ENGINEERING</option>
        <option value="net_com">NETWORK COMMUNICATION</option>
    </select> <br>
    <%} else {%>
    <select name="department" value="${addBean.department}">
        <option value="net_com">NETWORK COMMUNICATION</option>
        <option value="info_man">INFORMATION MANAGEMENT</option>
        <option value="soft_eng">SOFTWARE ENGINEERING</option>
    </select> <br>
    <%}%>


    <input type="date" name="dob" class="input-field"  value="${addBean.dob}" required><br>
    <input type="file" name="pic" class="input-field"  value="${addBean.prof_pic}" required><br>
    <input type="file" name="dok" class="input-field"  value="${addBean.diploma}" required><br>
    
    <% if (addBean.getApp_status().equals("waiting")) { %>
   <select name="status" value="${addBean.app_status}">
        <option value="waiting">waiting</option>
        <option value="pending" style="color: yellow">pending</option>
        <option value="approved" style="color: green">approved</option>
        <option value="rejected" style="color: red">rejected</option>
    </select>
    <%} else if (addBean.getApp_status().equals("pending")) { %>
    <select name="status" value="${addBean.app_status}">
         <option value="pending" style="color: yellow">pending</option>
        <option value="waiting">waiting</option>
        <option value="approved" style="color: green">approved</option>
        <option value="rejected" style="color: red">rejected</option>
    </select>
    <%} else if (addBean.getApp_status().equals("approved")) { %>
    <select name="status" value="${addBean.app_status}">
        <option value="approved" style="color: green">approved</option>
        <option value="waiting">waiting</option>
        <option value="pending" style="color: yellow">pending</option>
        <option value="rejected" style="color: red">rejected</option>
    </select>
    <%} else {%>
    <select name="status" value="${addBean.app_status}">
        <option value="rejected" style="color: red">rejected</option>
        <option value="waiting">waiting</option>
        <option value="pending" style="color: yellow">pending</option>
        <option value="approved" style="color: green">approved</option>
    </select>
    <%}%>
    

    <% if (request.getAttribute("action") == null) { %>
    <div class="formbold-mb-5">
        <input type="submit" name="action" value="Submit" class="formbold-btn" />
    </div>
    <%} else {%>
    <div class="formbold-mb-5">
        <input type="submit" name="action" value="${action}" class="formbold-btn" />
    </div>
    <%}%>
    <p><a href="logIn.jsp">Log Out</a></p>

</form>


