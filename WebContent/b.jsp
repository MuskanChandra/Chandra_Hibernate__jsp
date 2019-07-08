<%@page import="Hibernatejsp.userdao"%>


<jsp:useBean id="obj" class="Hibernatejsp.user">  
</jsp:useBean>  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int i=userdao.CUserRegister(obj);  
if(i>0)  
out.print("You are successfully Registered");  
  
%>  