<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Session Object: 03</title>
</head>
<body>
<% 
out.print("현재 세션은 " +
(session.getLastAccessedTime() - session.getCreationTime()) / 1000 + 
"초 동안 지속되고 있습니다.");
%>
</body>
</html>