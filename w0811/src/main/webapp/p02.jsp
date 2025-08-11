<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	out.println("Server Name: "+request.getServerName()+"<br>");
	out.println("Project Name: "+request.getContextPath()+"<br>");
	out.println("Section Name: "+request.getSession()+"<br>");
	out.println("Request URL: "+request.getRequestURL()+"<br>");
	out.println("Request URI: "+request.getRequestURI()+"<br>");
	out.println("Ip Address: "+request.getRemoteAddr()+"<br>");
	out.println("File Name: "+request.getRequestURI().substring(request.getContextPath().length()+1)+"<br>");
	%>
</body>
</html>