<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
    	response.setStatus(HttpServletResponse.SC_OK);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>500 에러 발생</title>
</head>
<body>
	<b>500 Internal Server Error</b>
	<br>
		An exception occurred processing JSP page / ?
	<br>
		서비스 처리 과정에서 에러가 발생하였습니다.
	<br>
		찾고 있는 리소스에 문제가 있어 표시 할 수 없습니다.
</body>
</html>