<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:forward page="page_control_04.jsp">
	<jsp:param name="username" value="홍길동" />
	<jsp:param name="passwd" value="김동덕" />
	<jsp:param name="src" value="page_control_02.jsp" />
</jsp:forward>