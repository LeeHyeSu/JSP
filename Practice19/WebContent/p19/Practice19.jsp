<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int num1, num2 = 0;
	int result = 18;
	String op = "";
	
	public int calculator() {
		if (op.equals("+")) {
			result = num1 + num2;
		} else if (op.equals("-")) {
			result = num1 - num2;
		} else if (op.equals("*")) {
			result = num1 * num2;
		} else if (op.equals("/")) {
			result = num1 / num2;
		}
		return result;
	}
%>
<%
	if(request.getMethod().equals("POST")) {
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		op = request.getParameter("operator");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>계산기</title>
</head>
<body>

<form name="form1" method="post">
<table align="center" border="1" cellspacing="0" width="400" height="400">
	<tr>
		<td colspan="2" bgcolor="skyblue" height="50" align="center">
		<b><font size="6"color="white">CalCuLaTor</font></b>
		</td>
	</tr>
	<tr align="center">
		<td><img src="images/cal.jpg"></td>
		<td width="150px">
		<input type="text" name="num1" size="10"><BR><BR>
		<select name="operator">
			<option selected>+</option>
			<option>-</option>
			<option>*</option>
			<option>/</option>
		</select><BR><BR>
		<input type="text" name="num2" size="10"><BR><BR>
		<input type="submit" value="=" name="submit"><BR><BR>
		<%
		out.print("<input type=text name=result size=\"10\" value=");
		out.print(calculator());
		out.println(">");
		%>
		</td>
	</tr>
	<tr height="20px">
		<td colspan="2" bgcolor="skyblue"></td>
	</tr>
</table>
</form>
</body>
</html>