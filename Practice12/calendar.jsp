<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
out.println("<table border=1 cellpadding=3>");
out.println("<tr align=center><td>일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td></tr>");
for(int i=0; i<4; i++) {
	out.print("<tr>");
	for(int j=0; j<7; j++) {
		out.print("<td>&nbsp;</td>");
	}
	out.println("</tr>");
}
out.println("</table>");
%>