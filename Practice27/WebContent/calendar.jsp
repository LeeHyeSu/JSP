<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>calendar.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String sYear = request.getParameter("YEAR");
	int year = Integer.parseInt(sYear);
	String sMonth = request.getParameter("MONTH");
	int month = Integer.parseInt(sMonth);
	
	Calendar cal = Calendar.getInstance();
	cal.set(year, month-1, 1);
	int date = cal.get(Calendar.DATE);
	int week = cal.get(Calendar.DAY_OF_WEEK);
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	Calendar today = Calendar.getInstance();
	int todayYear = today.get(Calendar.YEAR);
	int todayMonth = today.get(Calendar.MONTH)+1;
	int todayDate = today.get(Calendar.DATE);
	
	out.println("<p align=right>");
	out.println("<b>" + todayYear + "-" + todayMonth + "-" + todayDate + "</b><p>");
	
	out.println("<center>");
	out.println("<h2>" + year + "년 " + month + "월</h2>");
	out.println("<table border=1 style=border-collapse:collapse width=800px>");
	out.println("<tr><td><font color=red>일</font></td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td></tr>");
	
	out.println("<tr>");
	int newLine = 0;
	for(int i = 1; i < week; i++) {
		out.println("<td>&nbsp;</td>");
		newLine++;
	}

	for(int i = start; i <= end; i++) {
		if(newLine == 0) {
			out.println("<td><font color=red>" + i + "</font></td>");
		}
		else if(newLine == 6) {
			out.println("<td><font color=blue>" + i + "</font></td>");
		}
		else
			out.println("<td>" + i + "</td>");
		
		newLine++;
		if(newLine == 7 && i != end) {
			out.print("</tr><tr>");
			newLine=0;
		}
	}
	
	while(newLine > 0 && newLine < 7) {
		out.println("<td>&nbsp;</td>");
		newLine++;
	}
	out.println("</tr>");
	out.println("</table>");
%>
</body>
</html>