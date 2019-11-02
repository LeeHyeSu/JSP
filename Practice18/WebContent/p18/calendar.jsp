<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>calendar.jsp</title>
</head>
<body>
<%
Calendar cal = Calendar.getInstance();
int year = Integer.parseInt(request.getParameter("YEAR"));
int month = Integer.parseInt(request.getParameter("MONTH"));
cal.set(year, month-1, 1);
int startDay = cal.get(Calendar.DAY_OF_WEEK);
int start = cal.getMinimum(Calendar.DATE);
int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

out.println("<h3>" + year + "년 " + (month+1) + "월</h3>");
out.println("<HR>");

int cnt = 0;
for(int i = 0; i < (startDay-1); i++) {
	out.println("&nbsp&nbsp&nbsp&nbsp&nbsp");
	cnt++;
}
for(int i = start; i <= end; i++) {
	if(i < 10) 
		out.println("&nbsp");
	out.println(i + "&nbsp");
	cnt++;
	if(cnt % 7 == 0)
		out.println("<br>");
}
%>
</body>
</html>