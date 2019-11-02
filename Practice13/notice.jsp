<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오류메세지</title>
</head>
<body>
	<center><img src="images/title.gif"></img></center>
	<form>
		<table border="1" width="600px" cellspacing="0" align="center">
			<tr>
				<td align="center" bgcolor="lightblue"><strong>오류가 발생했습니다.</strong></td>
			</tr>
			<tr height="250px">
				<td><center><img src="images/flower.gif"><br>
				오류 발생시간 : <%= new java.util.Date() %> <br>
				최대한 빨리 조치하겠습니다.
				</center></td>
			</tr>
		</table> 
	</form>
</body>
</html>