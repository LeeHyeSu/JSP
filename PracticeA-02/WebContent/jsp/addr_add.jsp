<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.*"%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="jspbook.ch07.AddrBean" />
<jsp:setProperty name="addr" property="*" />
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application" />
<%
	am.add(addr);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch07 : addr_add.jsp</title>
</head>
<body>
<div align="center">
<h2>등록내용</h2>
이름 : <jsp:getProperty property="username" name="addr" /><p>
전화번호 : <jsp:getProperty property="tel" name="addr" /><p>
이메일 : <jsp:getProperty property="email" name="addr" /><p>
성별 : <jsp:getProperty property="sex" name="addr" /><p>
그룹 : <jsp:getProperty property="group" name="addr" />
<hr>
<a href="addr_list.jsp">전체 목록보기</a>&nbsp;
<a href="addr_list_group.jsp">그룹별 목록보기</a>
</div>
</body>
</html>