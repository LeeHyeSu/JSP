<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>달력보기</title>
</head>
<body>
<%
	out.println("<table border=1 width=800px>");
	out.println("<tr align=center><td><font color=red>일</font></td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td></tr>");
	for(int i=0; i<4; i++) {
		out.print("<tr>");
		for(int j=0; j<7; j++) {
			out.print("<td>&nbsp;</td>");
		}
		out.println("</tr>");
	}
	out.println("</table>");
%>
</body>
</html>