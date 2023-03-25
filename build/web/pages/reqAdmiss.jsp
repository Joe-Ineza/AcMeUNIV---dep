<%-- 
    Document   : requestAdmission
    Created on : Mar 21, 2023, 1:52:50 PM
    Author     : joe7n
--%>



<%@page import="java.util.Base64"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="addBean" class="com.acmeuniv.beans.AdmissionBean" scope="request" />
<%@page import="com.acmeuniv.services.AdmissionService"%>
<%@page import="com.acmeuniv.services.AdmissionServiceInterface"%>
<%@page import="com.acmeuniv.dao.AdmissionDao"%>
<%@page import="com.acmeuniv.model.Admission"%>
<%@page import="com.acmeuniv.controller.SendEmail"%>

<%
    try {
            
    System.out.println("Helloooo");
    Admission adm = new Admission();
    adm.setEmail(request.getParameter("email"));
//   String email= request.getParameter("email");
//     out.println(email);
//    System.out.println(request.getParameter("email"));
    adm.setfName(request.getParameter("fname"));
    adm.setlName(request.getParameter("lname"));
    adm.setGender(request.getParameter("gender"));
    adm.setPhoneN(request.getParameter("phoneN"));
    adm.setLocationA(request.getParameter("locationA"));
    adm.setLevel_study(request.getParameter("level"));
    adm.setFaculty(request.getParameter("faculty"));
    adm.setDepartment(request.getParameter("department"));
    DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        if (request.getParameter("dob") != null) {
            adm.setDob(formatter.parse(request.getParameter("dob")));
     }
        
//    Part picpart = request.getPart("pic");
//    InputStream ins = picpart.getInputStream();
//    byte[] imagebyte = new byte[(int) picpart.getSize()];
//    ins.read(imagebyte);
//    String image = Base64.getEncoder().encodeToString(imagebyte);
//    Part pdfpart = request.getPart("dok");
//    InputStream inspdf = picpart.getInputStream();
//    byte[] pdfbyte = new byte[(int) pdfpart.getSize()];
//    inspdf.read(imagebyte);
//    String pdf = Base64.getEncoder().encodeToString(pdfbyte);
//    adm.setProf_pic(image);
//    adm.setDiploma(pdf);
    String picture = request.getParameter("pic");
    byte[] passpic = picture.getBytes();
    adm.setProf_pic(passpic);
    String doc = request.getParameter("dok");
    byte[] docum = doc.getBytes();
    adm.setDiploma(docum);
    
    adm.setApp_status("waiting");
    
    AdmissionServiceInterface add = new AdmissionService();
    
    if(add.createAdmission(adm))
    {
         String email = request.getParameter("email");
         String sender = "joeauca.7neza@gmail.com";
         SendEmail sendemail = new SendEmail(sender, "zgtppczwvmremrfl");
            String Recipient = (email);
            String subject = "CONFIRMATION Email";
            String message = "Hello,your form was successfuly submitted ";
            try {
                sendemail.sendEmail(Recipient, subject, message);
            } catch (Exception e) {
                e.printStackTrace();
            }

        System.out.println("GOOD BOY");
        
    }
    else
    {
        System.out.println("WE JAMA");
    }
    
    } catch (Exception e) {
        e.printStackTrace();
        }
%>

        

