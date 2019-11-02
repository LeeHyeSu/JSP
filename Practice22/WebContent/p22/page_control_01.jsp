<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Practice 04</title>
</head>
<body>
<form method=post action=page_control_02.jsp>
	아이디: <input type=text name=username>
	비밀번호: <input type=password name=passwd>
	<input type=submit value="forward 전송">
</form>

<form method=post action=page_control_03.jsp>
	아이디: <input type=text name=username>
	비밀번호: <input type=password name=passwd>
	<input type=submit value="sendRedirect 전송">
</form>
</body>
</html>