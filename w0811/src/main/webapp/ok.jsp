<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	table, th, td {border: 1px solid black; border-collapse: collapse;}
	table {width: 1000px; margin: 50px auto;}
	th, td {width: 200px; height: 40px;}
	h2, th, td {text-align: center;}
</style>
</head>
<body>
	<h2>you are adult</h2>
	<table>
	<tr>
	<th>age</th>
	<th>name</th>
	</tr>
	<tr>
	<td><%= request.getParameter("age") %></td>
	<td><%= request.getParameter("name") %></td>
	</tr>
	</table>
</body>
</html>