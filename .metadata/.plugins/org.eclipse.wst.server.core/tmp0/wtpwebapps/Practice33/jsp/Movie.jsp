<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.pr03.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="newMovie" class="jspbook.ch07.pr03.Movie" />
<jsp:setProperty name="newMovie" property="*" />
<jsp:useBean id="movies" class="jspbook.ch07.pr03.MovieManager" scope="application" />
<%
	if(newMovie.getTitle() != null && newMovie.getDirector() != null &&
		newMovie.getDate() != null) {
		movies.add(newMovie);
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table,tr,td {
	border: 1px solid black;
	border-collapse:collapse;	
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Movie</title>
</head>
<body>
<center>
<form name="form" method="POST" action="Movie.jsp">
제목: <input type="text" name="title">&nbsp;
감독: <input type="text" name="director">&nbsp;
관람일: <input type="text" name="date">
<input type="submit" value="추가">
</form>

<hr>
<table width="300">
	<tr align="center" bgcolor="#87CEFA">
	<td width="100">영화제목</td><td width="100">감독</td><td>관람일</td>
	</tr>
	<%
		for(Movie m : movies.getMovieList()) {
			out.println(m.toString());
		}
	%>
</table>
</center>
</body>
</html>