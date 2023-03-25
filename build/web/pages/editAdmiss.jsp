<%-- 
    Document   : editAdmiss
    Created on : Mar 21, 2023, 6:28:52 PM
    Author     : joe7n
--%>

<%@page import="com.acmeuniv.model.Admission"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.acmeuniv.services.AdmissionService"%>
<%@page import="com.acmeuniv.services.AdmissionServiceInterface" %>
<jsp:useBean id="addBean" class="com.acmeuniv.beans.AdmissionBean" scope="request" />
<%
        addBean.setEmail(request.getParameter("email"));
        String action = request.getParameter("action");                                   
        AdmissionServiceInterface admiss = new AdmissionService();
        Admission adm = admiss.findAdmission(addBean.getEmail());
        addBean.setFirstName(adm.getfName());
        addBean.setLastName(adm.getlName());
        addBean.setGender(adm.getGender());
        addBean.setPhoneN(adm.getPhoneN());
        addBean.setLevel_study(adm.getLevel_study());
        addBean.setLocationA(adm.getLocationA());
        addBean.setFaculty(adm.getFaculty());
        addBean.setDepartment(adm.getDepartment());
        DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        addBean.setDob(formatter.format(adm.getDob()));
        addBean.setProf_pic(adm.getProf_pic());
        addBean.setDiploma(adm.getDiploma());
        addBean.setApp_status(adm.getApp_status());
        request.setAttribute("action",action);
        request.getRequestDispatcher("schoolAdminAccess.jsp").forward(request, response);
    
%>