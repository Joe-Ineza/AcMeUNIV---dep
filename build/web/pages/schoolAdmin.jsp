<%-- 
    Document   : schoolAdmin
    Created on : Mar 21, 2023, 11:49:43 AM
    Author     : joe7n
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.acmeuniv.services.AdmissionService"%>
<%@page import="com.acmeuniv.services.AdmissionServiceInterface"%>
<%@page import="com.acmeuniv.model.Admission"%>
<link href="../css/tablefrmt.css" rel="stylesheet" type="text/css"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //Http 1.1
    response.setHeader("Pragma", "no-cache"); //For older Http Versions (Http 1.0
    response.setHeader("Expires", "0"); //For Proxies
    if (session.getAttribute("user") == null) {
        response.sendRedirect("logIn.jsp");
    }


%>



<body style="background-image: url('../images/wp2017235_edited.jpg');">
<br><br><br><br>
<center><p><strong style="color:palegoldenrod ; font-size: 30px; font-weight: bold; ">${message}</strong></p></center>
<div class="wrapper">
    <div style="overflow: auto; height: 500px; width: 1000px;">
        <div class="table">
            <div class="row header blue">
                <div class="cell">
                    Email
                </div>
                <!--            <div class="cell">
                                First Name
                            </div>-->
                <!--            <div class="cell">
                                Last Name
                            </div>-->
                <div class="cell">
                    Gender
                </div>
                <div class="cell">
                    Phone Number
                </div>
                <!--            <div class="cell">
                                Date of Birth
                            </div>-->

                <div class="cell">
                    Education Level
                </div>
                <div class="cell">
                    Faculty
                </div>
                <div class="cell">
                    Department
                </div>
                <!--            <div class="cell">
                                Profile Picture
                            </div>-->
                <!--            <div class="cell">
                               High School Diploma
                            </div>-->
                <div class="cell">
                    Application_Status
                </div>
                <div class="cell">
                    Action
                </div>

            </div>

            <%            List<Admission> admiss = new ArrayList<Admission>();
                AdmissionServiceInterface admissService = new AdmissionService();
                admiss = admissService.findAll();

                for (Admission adm : admiss) {
            %>
            <div class="row">
                <div class="cell" data-title="Email">
                    <%=adm.getEmail()%>
                </div>
                <!--            <div class="cell" data-title="First Name">
                               
                            </div>-->
                <!--            <div class="cell" data-title="Last Name">
                               
                            </div>-->
                <div class="cell" data-title="Gender">
                    <%=adm.getGender()%>
                </div>
                <div class="cell" data-title="Phone Number">
                    <%=adm.getPhoneN()%>
                </div>
                <!--            <div class="cell" data-title="Date of Birth">
                                  
                            </div>-->
                <div class="cell" data-title="Eduacation Level">
                    <%=adm.getLevel_study()%>
                </div>
                <div class="cell" data-title="Faculty">
                    <%=adm.getFaculty()%>
                </div>
                <div class="cell" data-title="Department">
                    <%=adm.getDepartment()%>
                </div>
                <!--             <div class="cell" data-title="Profile Picture">
                                
                            </div>-->
                <!--             <div class="cell" data-title="High School Diploma">
                             
                            </div>-->
                <div class="cell" data-title="Application_Status">
                    <%=adm.getApp_status()%>
                </div>
                <div class="cell" data-title="Action">
                    <a href="editAdmiss.jsp?email=<%=adm.getEmail()%>&action=Update">Edit</a>
                    <a href="editAdmiss.jsp?email=<%=adm.getEmail()%>&action=Delete">Delete</a>
                </div>
            </div>
            <%}%>
        </div>
    </div>
</div>


</body>