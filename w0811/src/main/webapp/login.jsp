<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>

<%
  String save_id = "";
  Cookie[] cookies = request.getCookies();
  if (cookies != null) {
    for (Cookie cookie : cookies) {
      if (cookie.getName().equals("save_id")) {
        save_id = cookie.getValue();
      }
    }
  }
%>

<form action="./LoginOk.jsp" method="post">
  <label>ID</label>
  <input type="text" name="id" value="<%= save_id %>" />

  <label>PW</label>
  <input type="password" name="pw" />

  <label>ID Save</label>
  <input type="checkbox" name="checkId" value="1"
    <%= (save_id.isEmpty()) ? "" : "checked" %> /><br/><br/>

  <input type="submit" value="로그인" />
</form>

</body>
</html>