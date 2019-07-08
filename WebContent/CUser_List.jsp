
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Hibernatejsp.CUserDao"%>  
    <%@page import="Hibernatejsp.CUser"%>  
        <%@page import="java.util.*"%>  
        <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
           
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap.css" rel="stylesheet" />
</head>
<body>
<table class="table table-hover table-bordered" style="width:300px" >
<tr><th>ID</th><th>F_Name</th><th>L_Name</th><th>Address</th><th>Email</th><th>Password</th></tr>
<c:forEach var="value" items="${CUserDao.GetCUser()}">  
<tr>
<td><c:out value="${value.user_ID}"/></td>
<td><c:out value="${value.f_Name}"/></td>
<td><c:out value="${value.l_Name}"/></td>
<td><c:out value="${value.address}"/></td>
<td><c:out value="${value.email}"/></td>
<td><c:out value="${value.password}"/></td>
</tr>
</c:forEach>
</table>

</body>
</html>