<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>include_action</title>
</head>
<body>
<center>
<H2>Include Action Practice</H2>

<p>
<table border=0 width=400 cellpadding=20 cellspacing=1;>
	<tr>
		<td><jsp:include page="calendar.jsp">
				<jsp:param name="YEAR" value="2017" />
				<jsp:param name="MONTH" value="10" />
			</jsp:include></td>
		<td><jsp:include page="news.jsp">
				<jsp:param name="TASK2" value="Homework" />
			</jsp:include></td>
	</tr>
</table>

</center>
</body>
</html>