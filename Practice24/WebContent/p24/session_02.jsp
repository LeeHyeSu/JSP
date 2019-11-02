<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Session Object: 02</title>
</head>
<body>
<%= request.getParameter("username") %>님 환영합니다.<br>
<p>
세션 ID: <%=session.getId() %><br>
세션 지속시간: <%= session.getMaxInactiveInterval() %><br>
<p>
<a href="session_03.jsp" target="_blank">session_03.jsp로 가기</a>
</body>
</html>