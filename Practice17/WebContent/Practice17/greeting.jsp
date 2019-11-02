<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>greeting.jsp</title>
</head>
<body>
<H3>greeting.jsp에서 출력한 메시지입니다.</H3>
<%= request.getParameter("name") %>님 환영합니다.<BR>
오늘은 <%= request.getParameter("date") %>입니다.
</body>
</html>