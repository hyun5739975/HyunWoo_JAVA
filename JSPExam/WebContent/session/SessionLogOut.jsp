<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% session.invalidate(); %>

<script type="text/javascript">
	alert("로그아웃 되었습니다.");	
</script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
	로그아웃 되었습니다.
	<a href="http://localhost:9000/JSPExam/session/SessionMemberLogIn.jsp">
	로그인 페이지 이동
	</a>
</body>
</html>