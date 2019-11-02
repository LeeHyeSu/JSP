<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar" %>
<%!
	String result = "";
	String[] arrayDay = {"일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"};
	
	public String convertDay(int day) {
		for(int i = 1; i < (arrayDay.length+1); i++) {
			if(day == i) {	
				result = arrayDay[i-1];
			}
		}
		return result;
	}
	
	public String convertDate(Calendar cal) {
		int y = cal.get(Calendar.YEAR);
		int m = cal.get(Calendar.MONTH)+1;
		int d = cal.get(Calendar.DATE);

		String year = String.valueOf(y);
		String month = String.valueOf(m);
		String date = String.valueOf(d);
		
		result = year + "년 " + month + "월 " + date + "일";
		return result;
	}	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>practiceA-01</title>
</head>
<body>
<% 
Calendar cal = Calendar.getInstance();
int day = cal.get(Calendar.DAY_OF_WEEK);

out.print("오늘은 " + convertDate(cal) + " ");
if(convertDay(day) == "토요일") {
	out.print("<font color=blue>" + convertDay(day) + "</font>");
}
else if(convertDay(day) == "일요일") {
	out.print("<font color=red>" + convertDay(day) + "</font>");
}
else {
	out.print(convertDay(day));
}
out.println("입니다.<br>");

int start = cal.getMinimum(Calendar.DATE);
int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

out.println("이번 달은 "+start+"일부터 시작하여 "+end+"일에 끝납니다.<br>");

cal.set(1997, Calendar.APRIL, 8);
day = cal.get(Calendar.DAY_OF_WEEK);

out.print("내생일은 " + convertDate(cal) + " ");
if(convertDay(day) == "토요일") {
	out.print("<font color=blue>" + convertDay(day) + "</font>");
}
else if(convertDay(day) == "일요일") {
	out.print("<font color=red>" + convertDay(day) + "</font>");
}
else {
	out.print(convertDay(day));
}
out.println("입니다.<br>");
%>
</body>
</html>