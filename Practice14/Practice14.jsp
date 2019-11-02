<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Practice14</title>
</head>
<body>
<% 
Calendar cal = Calendar.getInstance();
int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH);
int date = cal.get(Calendar.DATE);
int day = cal.get(Calendar.DAY_OF_WEEK);
char[] arrayDay = {'일', '월', '화', '수', '목', '금', '토'};

out.print("오늘은 "+year+"년 "+(month+1)+"월 "+date+"일 ");
out.println(arrayDay[day-1]+"요일입니다.<br>");

int start = cal.getMinimum(Calendar.DATE);
int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

out.println("이번 달은 "+start+"일부터 시작하여 "+end+"일에 끝납니다.<br>");

cal.set(1997, Calendar.APRIL, 8);
year = cal.get(Calendar.YEAR);
month = cal.get(Calendar.MONTH);
date = cal.get(Calendar.DATE);
day = cal.get(Calendar.DAY_OF_WEEK);

out.print("내 생일 "+year+"년 "+(month+1)+"월 "+date+"일은 ");
out.println(arrayDay[day-1]+"요일입니다.<br>");
%>
</body>
</html>