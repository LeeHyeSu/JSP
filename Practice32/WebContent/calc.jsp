<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>계산기 만들기</title>
</head>
<body>
<form method="post" action="calc_result.jsp" name="form1">
	<table width="400" height="400" border="1" 
		bordercolor="#00BFFF" align="center" cellspacing="0">
		<tr height="50">
			<td colspan="2" bgcolor="#00BFFF" align="center">
			<b><font size="6" color="white">CalCuLaTor</font></b>
			</td>
		</tr>
		<tr align="center">
			<td width="250px"><img src="images/cal.jpg"></td>
			<td>
				<input type="text" name="op1" size="10"><p>
				<select name="operator">
					<option selected>+</option>
					<option>-</option>
					<option>*</option>
					<option>/</option>
				</select><p>
				<input type="text" name="op2" size="10"><p>
				<input type="submit" value="=">
			</td>
		</tr>
		<tr height="20">
			<td colspan="2" bgcolor="#00BFFF">&nbsp;</td>
		</tr>
	</table>
</form>
</body>
</html>