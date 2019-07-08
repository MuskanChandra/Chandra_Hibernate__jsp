<%@page import = "Hibernatejsp.UserRegisterDao" %>

<jsp:useBean id = "obj" class = "Hibernatejsp.UserRegister">
</jsp:useBean>
<jsp:setProperty property="*" name="obj"/>

<%
int i=UserRegisterDao.uRegister(obj);
if(i>0)
	 out.print("Your are successfully Registered. Welcome User...........");
	//  out.print("your data Delete request is successful. Thank you User....");
%>