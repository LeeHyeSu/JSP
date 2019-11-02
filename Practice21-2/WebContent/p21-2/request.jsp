<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>request 객체</title>
</head>
<body>
<form name=frm method=get action=result.jsp>
<!-- get 방식 : 텍스트필드에 작성한 값이 주소창에 그대로 드러남 -->
아이디 : <input type=text name=strID><br>
비밀번호 : <input type=password name=strPwd><br>
<!-- 패스워드에 한글을 입력했을시 특이사항 : 영어로 출력된다 -->
<input type=submit value="로그인"><input type=reset value="취소">
</form>
</body>
</html>