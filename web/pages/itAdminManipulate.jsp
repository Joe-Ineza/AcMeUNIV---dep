<%-- 
    Document   : itAdminManipulate
    Created on : Mar 21, 2023, 11:34:06 PM
    Author     : joe7n
--%>

<%@page import="com.acmeuniv.controller.SendEmail"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.acmeuniv.model.SignUp"%>
<%@page import="com.acmeuniv.services.SignUpService"%>
<%@page import="com.acmeuniv.services.SignUpServiceInterface"%>
<jsp:useBean id="signUpBean" class="com.acmeuniv.beans.SignUpBean" scope="request" />
<%
        try {

            SignUp signUp = new SignUp();

            signUp.setEmail(request.getParameter("email"));
            signUp.setPassword(request.getParameter("password"));
            signUp.setIsManage(request.getParameter("isManage"));
            SignUpServiceInterface sign = new SignUpService();

            if (request.getParameter("action").equals("Update")) {
                if (sign.updateSignUp(signUp)) {
                    if (request.getParameter("isManage").equals("false")) {
                        String email = request.getParameter("email");
                        String sender = "joeauca.7neza@gmail.com";
                        SendEmail sendemail = new SendEmail(sender, "zgtppczwvmremrfl");
                        String Recipient = (email);
                        String subject = "ACCOUNT STATUS CHANGED";
                        String message = "YOUR ARE A USER OF THE SYSTEM ";
                        try {
                            sendemail.sendEmail(Recipient, subject, message);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    } else
                    {
                        String email = request.getParameter("email");
                        String sender = "joeauca.7neza@gmail.com";
                        SendEmail sendemail = new SendEmail(sender, "zgtppczwvmremrfl");
                        String Recipient = (email);
                        String subject = "ACCOUNT STATUS CHANGED";
                        String message = "YOU HAVE NOW SCHOOL ADMINISTRATOR PRIVILEDGES";
                        try {
                            sendemail.sendEmail(Recipient, subject, message);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
                request.setAttribute("message", "Updated Successfully");
                request.getRequestDispatcher("itAdmin.jsp").forward(request, response);

            }else {
                sign.deleteSignUp(signUp);
                request.setAttribute("message", "Deleted Successfully");
                request.getRequestDispatcher("itAdmin.jsp").forward(request, response);

                }

        }catch (Exception ex) {
        request.setAttribute("message", "Something went wrong");
        request.getRequestDispatcher("itAdmin.jsp").forward(request, response);
    }
%>


