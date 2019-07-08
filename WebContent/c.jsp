
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Hibernatejsp.userdao"%>  
    <%@page import="Hibernatejsp.user"%>  
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
<c:forEach var="value" items="${userdao.GetCUser()}">  
<tr>
<td><c:out value="${value.uid}"/></td>
<td><c:out value="${value.fname}"/></td>
<td><c:out value="${value.lname}"/></td>
<td><c:out value="${value.address}"/></td>

</tr>
</c:forEach>
</table>

</body>
</html>