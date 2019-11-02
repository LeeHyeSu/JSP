<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Practice23</title>
</head>
<body>
<%
Calendar today = Calendar.getInstance();
int year = today.get(Calendar.YEAR);
int month = today.get(Calendar.MONTH);
int date = today.get(Calendar.DATE);

Calendar cal = Calendar.getInstance();
int startDay = cal.get(Calendar.DAY_OF_WEEK);
int start = cal.getMinimum(Calendar.DATE);
int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

int i, j, cnt = 1, num = start;

out.println("<p align=right>");
out.println("<b>" + year + "-" + (month+1) + "-" + date + "</b><br>");

out.println("<center>");
out.println("<table border=1 style=border-collapse:collapse width=800px>");
out.println("<tr><td><font color=red>일</font></td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td></tr>");

out.print("<tr>");
for(i=0; i<(startDay-1); i++) {
	out.print("<td>&nbsp;</td>");
	cnt++;
}
for(i=(startDay-1); i<7; i++) {
	out.print("<td>" + num++ + "</td>");
	cnt++;
}
out.print("</tr>");

for(i=0; i<3; i++) {
	out.print("<tr>");
	for(j=0; j<7; j++) {
		out.print("<td>" + num++ + "</td>");
		cnt++;
	}
	out.println("</tr>");
}

out.print("<tr>");
for(i=num; i<=end; i++) {
	out.print("<td>" + num++ + "</td>");
	cnt++;
}
if(cnt < 35) {
	for(i=cnt; i<=35; i++) {
		out.println("<td>&nbsp;</td>");
		cnt++;
	}
}
out.print("</tr>");

out.println("</table>");
%>
</body>
</html>