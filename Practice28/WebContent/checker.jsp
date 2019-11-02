<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("UTF-8");

	String act = (String)request.getParameter("action");
	
	if(act.equals("login")) {
		String username = (String)request.getParameter("user");
		String password = (String)request.getParameter("passwd");
		if(username != null && password.equals("hatter")) {
			session.setAttribute("user", username);
		}
		response.sendRedirect("index.jsp");
	}
	else {
		session.invalidate();
		response.sendRedirect("index.jsp");
	}
%>
