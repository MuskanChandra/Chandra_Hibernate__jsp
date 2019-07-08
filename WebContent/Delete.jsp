<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "Hibernatejsp.UserRegisterDao" %>
<%@page import = "Hibernatejsp.UserRegister" %>
 <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>

<%
UserRegister u=new UserRegister();
if ("POST".equalsIgnoreCase(request.getMethod())) {
	
	
%>
<jsp:useBean id = "obj" class = "Hibernatejsp.UserRegister">
</jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<%
UserRegisterDao.DeleteUserRegister(obj);
response.sendRedirect("UserRegisterList.jsp");
} else {
	int id=Integer.parseInt(request.getParameter("id"));
	u= UserRegisterDao.selectonerow(id);
	 
	 out.print(u.getUser_ID());  
}

//UserRegisterDao.updateuser(id);
%>

<form action="Delete.jsp" method="post">  
 <input type="hidden" name="user_ID" value =<% out.print(u.getUser_ID());%> /><br><br/>
First Name : <input type="text" name="f_name" value =<% out.print(u.getF_name());%> /><br><br/>
Middle Name : <input type="text" name="m_name" value =<% out.print(u.getM_name());%>/><br><br/> 
Last Name : <input type="text" name="l_name" value =<% out.print(u.getL_name());%>/><br><br/>   
Gender : <input type="text" name="gender" value =<% out.print(u.getGender());%>/><br><br/>
Age : <input type="text" name="age" value =<% out.print(u.getAge());%>/><br><br/>
Per. Address : <input type="text" name="p_address" value =<% out.print(u.getP_address());%>/><br><br/>
Tem. Address : <input type="text" name="t_address" value =<% out.print(u.getT_address());%>/><br><br/>  
Contact No : <input type="text" name="contact" value =<% out.print(u.getContact());%>/><br><br/> 
Email ID : <input type="text" name="email" value =<% out.print(u.getEmail());%>/><br><br/> 
Password : <input type="password" name="password" value =<% out.print(u.getPassword());%>/><br><br/>  
<input type="submit" value="Delete"/>  
  
</form> 