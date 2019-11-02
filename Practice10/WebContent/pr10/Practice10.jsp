<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Practice 10</title>
</head>
<body>
<%
	out.println("<center>");
	out.println("<h2>구구단 출력</h2>");
	out.println("<hr>");
	out.println("<table border=1 width=400px height=400px>");
	out.println("<tr align=center>");
	int i, j;
	for(i = 2; i < 6; i++) {
		out.print("<td>");
		for(j = 1; j < 10; j++) {
			out.print(i + " * " + j + " = " + i*j + "<br>");
		}
		out.println("</td>");
	}
	out.println("</tr>");
	out.println("<tr align=center>");
	for(i = 6; i < 10; i++) {
		out.print("<td>");
		for(j = 1; j < 10; j++) {
			out.print(i + " * " + j + " = " + i*j + "<br>");
		}
		out.println("</td>");
	}
	out.println("</tr>");
	out.println("</table>");
	out.println("</center>");
%>
</body>
</html>