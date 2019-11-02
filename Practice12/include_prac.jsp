<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Include Directive</title>
</head>
<body>
<center>
<h2> include 지시어 연습 </h2>
<HR>

<P>
<table border=0 cellpadding=5 cellspacing=1>
	<tr>
		<td><font size=2><%@include file="calendar.jsp" %></font></td>
		<td width="10">&nbsp</td>
		<td><font size=2><%@include file="news.jsp" %></font></td>
	</tr>
</table>

</center>
</body>
</html>