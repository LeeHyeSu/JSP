<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>result.jsp</title>
</head>
<body>
전달되는 파라미터 이름들<br>
<%
Enumeration<String> e = request.getParameterNames();
while(e.hasMoreElements()) {
	String s = e.nextElement();
	out.println(s + "<br>");
}
%>
<hr>
아이디 : <%=request.getParameter("strID")%><br>
비밀번호 : <%=request.getParameter("strPwd")%>
</body>
</html>