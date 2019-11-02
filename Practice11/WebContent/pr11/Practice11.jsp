<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body> 
<%
	String s = "Hello, Welcome to JSP World! Let's go!";
	String t = "JSP";
	out.println("입력되어 있는 문자열: " + s +"<br>");
	out.println("문자열의 길이: " + s.length() + "<br>");
	out.println("'JSP'라는 문자의 위치: " + s.indexOf(t) + "<br>");
	out.println("모두 소문자로 변경: " + s.toLowerCase() + "<br>");
	out.println("모두 대문자로 변경: " + s.toUpperCase() + "<br>");
%>
</body>
</html>