<%-- 
    Document   : itAdminAccess
    Created on : Mar 21, 2023, 11:04:29 PM
    Author     : joe7n
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="signUpBean" class="com.acmeuniv.beans.SignUpBean" scope="request" />
        <form action="itAdminManipulate.jsp" method="post">

            <input type="email" name="email" class="input-field" placeholder="Email Address" value="${signUpBean.email}" readonly>
            <input type="password" name="password" class="input-field" placeholder="Enter Password" value="${signUpBean.password}"  readonly>
             <% if (signUpBean.getIsManage().equals("false")) { %>
            <select name="isManage" value="${signUpBean.isManage}">
            <option value="false"  style="color: red">false</option>
            <option value="true" style="color: green">true</option>
            <option  value="admin" style="color: #ea6153">admin</option>
            </select>
            <%} else if (signUpBean.getIsManage().equals("admin")) { %>
            <select name="isManage" value="${signUpBean.isManage}">
            <option value="admin"  style="color: #ea6153">admin</option>
            <option value="false" style="color: red">false</option>
            <option value="true" style="color: green">true</option>
            </select>
            <%}
            else {%>
           <select name="isManage" value="${signUpBean.isManage}">
            <option value="true"  style="color: red">true</option>
            <option value="false"  style="color: green">false</option>
            <option value="admin" style="color: #ea6153">admin</option>
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


