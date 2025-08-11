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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	if (request.getParameter("checkId") != null) {
		String checkId = request.getParameter("checkId");
	
		if(checkId.equals("1")) {
			Cookie cookie = new Cookie("save_id", id);
			cookie.setMaxAge(60*10);
			response.addCookie(cookie);
			
		}
	} else {
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie: cookies) {
			if (cookie.getName().equals("save_id")){
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}
	}
	
	%>
	
	<a href="./login.jsp">로그인 페이지로 이동</a>
	
</body>
</html>