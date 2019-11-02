<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>news.jsp</title>
</head>
<body>
<% 
String task1 = request.getParameter("TASK1");
String task2 = request.getParameter("TASK2");
out.println("<H3>오늘의 일정</H3>");
out.println("<HR>");
out.println("<ol>");
if(task1 == null) out.println("<li>일정 없음</li>");
else out.println("<li>" + task1 + "</li>");
if(task2 == null) out.println("<li>일정 없음</li>");
else out.println("<li>" + task2 + "</li>");
out.println("</ol>");
%>
</body>
</html>