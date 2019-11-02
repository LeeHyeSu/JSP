<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.*"%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="login" class="jspbook.ch07.pr01.StudentBean" scope="page" />
<jsp:setProperty name="login" property="*" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보</title>
</head>
<body>
이름: <jsp:getProperty name="login" property="sname" /><br>
학번: <jsp:getProperty name="login" property="sid" /><br>
나이: <jsp:getProperty name="login" property="age" /><br>
전공: <jsp:getProperty name="login" property="major" /><br>
주소: <jsp:getProperty name="login" property="address" />
<hr>
<%
	if(login.isGrownUp()) {
		out.println(login.getSname() + "씨는 성인입니다.");
	}
	else {
		out.println(login.getSname() + "씨는 성인이 아닙니다.");
	}
%>
</body>
</html>