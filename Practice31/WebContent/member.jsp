<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
<form method="post" action="register.jsp" name="form1">
	<table width="300" border="1" align="center" cellpadding="5">
		<tr>
		<td colspan="2" align="center">회원가입</td>
		</tr>
		<tr align="center">
		<td>이름</td>
		<td><input type="text" name="sname"></td>
		</tr>
		<tr align="center">
		<td>학번</td>
		<td><input type="text" name="sid"></td>
		</tr>
		<tr align="center">
		<td>나이</td>
		<td><input type="text" name="age"></td>
		</tr> 
		<tr align="center">
		<td>전공</td>
		<td><input type="text" name="major"></td>
		</tr>
		<tr align="center">
		<td>주소</td>
		<td><input type="text" name="address"></td>
		</tr>
		<tr>
		<td colspan="2" align="center">
			<input type="submit" name="submit" value="가입">
			<input type="reset" name="reset" value="취소">
		</td>
		</tr>
	</table>
</form>
</body>
</html>