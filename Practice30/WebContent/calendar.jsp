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
	String sMonth = request.getParameter("MONTH");

	Calendar cal = Calendar.getInstance();
	int year=0, month=0;
	if(sYear == null || sMonth == null) {
		year = cal.get(Calendar.YEAR);
		month = cal.get(Calendar.MONTH)+1;
	}
	else {
		year = Integer.parseInt(sYear);
		month = Integer.parseInt(sMonth);
	}
	
	cal.set(year, month-1, 1);
	int week = cal.get(Calendar.DAY_OF_WEEK);
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	Calendar today = Calendar.getInstance();
	int todayYear = today.get(Calendar.YEAR);
	int todayMonth = today.get(Calendar.MONTH)+1;
	int todayDate = today.get(Calendar.DATE);
	
	int preMonth = month - 1;
	int preYear = year - 1;
	
	int nextMonth = month + 1;
	int nextYear = year + 1;
	
	out.println("<table border=0 width=800px>");
	out.println("<tr><td><a href='calendar.jsp?YEAR="+preYear+"&MONTH="+month+"'>◀ </a>");
	out.println("<b>"+year+"년</b>");
	out.println("<a href='calendar.jsp?YEAR="+nextYear+"&MONTH="+month+"'> ▶</a><td>");
	if(month == 1) {
		out.println("<td align=center><b>◀ "+month+"월</b>");
		out.println("<a href='calendar.jsp?YEAR="+year+"&MONTH="+nextMonth+"'> ▶</a><td>");
	}
	else if(month == 12) {
		out.println("<td align=center><a href='calendar.jsp?YEAR="+year+"&MONTH="+preMonth+"'>◀ </a>");
		out.println("<b>"+month+"월 ▶</b></td>");
	}
	else {
		out.println("<td align=center><a href='calendar.jsp?YEAR="+year+"&MONTH="+preMonth+"'>◀ </a>");
		out.println("<b>"+month+"월</b>");
		out.println("<a href='calendar.jsp?YEAR="+year+"&MONTH="+nextMonth+"'> ▶</a><td>");
	}
	out.println("<td align=right><b>"+todayYear+"-"+todayMonth+"-"+todayDate+"</b></td></tr>");
	
	out.println("<p><center>");
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