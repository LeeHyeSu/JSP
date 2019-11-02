<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forward.jsp</title>
</head>
<body>
<center>
<h2>forward 액션 연습</h2>
<HR>
<jsp:forward page="greeting.jsp">
	<jsp:param name="name" value="Dongduk University" />
	<jsp:param name="date" value="2011/04/05" />
</jsp:forward>
</center>
</body>
</html>