<%@page import="Hibernatejsp.CUserDao"%>  

<jsp:useBean id="obj" class="Hibernatejsp.CUser">  
</jsp:useBean>  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int i=CUserDao.CUserRegister(obj);  
if(i>0)  
out.print("You are successfully Registered");  
  
%>  