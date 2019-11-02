<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>request 객체</title>
</head>
<body>
<form name=frm action=result.jsp>
<!-- 텍스트필드에 입력한 내용이 주소창에 드러나는 것으로 보아 get속성이 default로 사용되는 것을 알 수 있음 -->
아이디 : <input type=text name=strID><br>
비밀번호 : <input type=password name=strPwd><br>
<input type=submit value="로그인"><input type=reset value="취소">
</form>
</body>
</html>