<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<style type="text/css">
		table, th, td {border: 1px solid black; border-collapse: collapse;}
		table, h2 {width: 1000px; margin: 50px auto;}
		th, td {width: 200px; height: 40px;}
		h2, th, td {text-align: center;}
		
		
	</style>
	</head>
	<body>
		<%
		
		Date today = new Date();
		
		for (int i=0; i<5; i++) {
			out.print(i+"<br>");
		}
		%>
		<h2>table</h2>
		<table>
			<tr>
				<th>var</th>
				<th>val</th>
			</tr>
			<% for (int i=0; i<10; i++) { %>
				<tr>
				<td>int</td>
				<td><%= i %></td>
				</tr>
			<%}%>
			
		</table>
	
	
	</body>
</html>