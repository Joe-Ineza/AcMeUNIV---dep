<%-- 
    Document   : admission
    Created on : Mar 21, 2023, 11:49:14 AM
    Author     : joe7n
--%>



<!DOCTYPE html>
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
<jsp:useBean id="addBean" class="com.acmeuniv.beans.AdmissionBean" scope="request" />
<center><p><strong style="color:sandybrown ; font-size: 30px; font-weight: bold; ">${message}</strong></p></center>
<form action="reqAdmiss.jsp" method="post">

    <input type="text" name="email" class="input-field" placeholder="Email Address" value="${addBean.email}" required><br>
    <input type="text" name="fname" class="input-field" placeholder="First Name" value="${addBean.firstName}" required><br>
    <input type="text" name="lname" class="input-field" placeholder="Last Name" value="${addBean.lastName}" required><br>
    <select name="gender" value="${addBean.gender}">
        <option value="male">Male</option>
        <option value="female">Female</option>
    </select>    <br>
    <input type="text" name="phoneN" class="input-field" placeholder="Phone Number" value="${addBean.phoneN}" required><br>
    <input type="text" name="locationA" class="input-field" placeholder="Location Address" value="${addBean.locationA}" required><br>
    <select name="level" value="${addBean.level_study}">
        <option value="undergraduate">Undergraduate</option>
        <option value="graduate">Graduate</option>
    </select> <br>
    <select name="faculty" value="${addBean.faculty}">
        <option value="IT">IT</option>
    </select> <br>
    <select name="department" value="${addBean.department}">
        <option value="soft_eng">SOFTWARE ENGINEERING</option>
        <option value="info_man">INFORMATION MANAGEMENT</option>
        <option value="net_com">NETWORK COMMUNICATION</option>
    </select> <br>
    <input type="date" name="dob" class="input-field"  value="${addBean.dob}" required><br>
    <input type="file" name="pic" class="input-field"  value="${addBean.prof_pic}" required><br>
    <input type="file" name="dok" class="input-field"  value="${addBean.diploma}" required><br>

    <% if (request.getAttribute("action") == null) { %>
    <div class="formbold-mb-5">
        <input type="submit" name="action" value="Submit" class="formbold-btn" />
    </div>
    <%} else {%> 
    <div class="formbold-mb-5">
        <input type="submit" name="action" value="${action}" class="formbold-btn" />
    </div>
    <%}%>
    <p><a href="logout.jsp">Log Out</a></p>

</form>


