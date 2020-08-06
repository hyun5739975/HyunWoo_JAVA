<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Cookie cookie = new Cookie("hour", "1time");
cookie.setMaxAge(60); //시간 설정 60초(1분)/ -1 : 음수값으로 지정할때 웹 브라우저가 닫힐때 쿠키 삭제 
response.addCookie(cookie);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 유효 시간</title>
</head>
<body>
유효 시간이 1분인 cookie 쿠키 생성
</body>
</html>