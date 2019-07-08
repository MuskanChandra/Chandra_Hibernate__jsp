
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Hibernatejsp.UserRegisterDao"%>  
    <%@page import="Hibernatejsp.UserRegister"%>  
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
<tr><th>ID</th><th>F_Name</th><th>M_Name</th><th>L_Name</th><th>Gender</th><th>Age</th><th>P_Address</th><th>T_Address</th><th>Contact</th><th>E-Mail</th><th>Password</th><th>Edit</th><th>Delete</th></tr>
<c:forEach var="value" items="${UserRegisterDao.GetRegister()}">  
<tr>
<td><c:out value="${value.user_ID}"/></td>
<td><c:out value="${value.f_name}"/></td>
<td><c:out value="${value.m_name}"/></td>
<td><c:out value="${value.l_name}"/></td>
<td><c:out value="${value.gender}"/></td>
<td><c:out value="${value.age}"/></td>
<td><c:out value="${value.p_address}"/></td>
<td><c:out value="${value.t_address}"/></td>
<td><c:out value="${value.contact}"/></td>
<td><c:out value="${value.email}"/></td>
<td><c:out value="${value.password}"/></td>
<td><a href="Edit.jsp?id=${value.user_ID}">Update</a></td>
<td><a href="Delete.jsp?id=${value.user_ID}">Delete</a></td>
</tr>
</c:forEach>
</table>

</body>
</html>