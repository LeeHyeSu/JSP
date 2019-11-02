<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	String number = request.getParameter("number");
	
	ArrayList<String> addrbook = (ArrayList<String>)application.getAttribute("addrbook");
	
	if(addrbook == null) {
		addrbook = new ArrayList<String>();
	}
	
	addrbook.add(name+", "+number);
	application.setAttribute("addrbook", addrbook); 
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<center>
<h1>주소록</h1>
<hr>
<%
	if(addrbook != null) {
		for(int i = 0; i < addrbook.size(); i++) {
			out.println((i+1) + ". " + addrbook.get(i) + "<br>");
		}
	}
%>
</center>
</body>
</html>