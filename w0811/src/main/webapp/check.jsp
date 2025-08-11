<%@page import="java.net.URLEncoder"%>
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
	int age = Integer.parseInt(request.getParameter("age"));
	
	String name = URLEncoder.encode(request.getParameter("name"));
	
	if (age>=19) {
		response.sendRedirect("./ok.jsp?age="+age+"&name="+name);
	} else {
		response.sendRedirect("./no.jsp?age="+age+"&name="+name);
	}
	%>
</body>
</html>