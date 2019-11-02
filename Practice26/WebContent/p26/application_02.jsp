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
<% session.setMaxInactiveInterval(180); %>
<%= request.getParameter("username") %>님 환영합니다.<br>
<p>
세션 ID: <%=session.getId() %><br>
세션 지속시간: <%= session.getMaxInactiveInterval() %><br>
<p>
<%
	Integer count = (Integer)application.getAttribute("count");
	if(count == null) 
		count = new Integer(0);
	int cnt = count.intValue()+1;
	application.setAttribute("count", cnt);
%>
오늘의 접속자수 : <%= cnt %>
</body>
</html>