<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="color.jsp" %>

<%
	
	try{
		if(session.getAttribute("memID") == null) {
			response.sendRedirect("SessionMemberLogIn.jsp");
		}
	}catch(Exception e){
		e.printStackTrace();
	}


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션을 사용한 회원인증</title>
<link href="style.css" type="text/css" rel ="stylesheet">
</head>
<body bgcolor = "<%=bodyback_c%>">
	<form action = "SessionLogOut.jsp" method="post">
		<table width="300" border="1" align="center">
			<tr>
				<td align="center" bgcolor="<%=value_c%>">
					<!-- session ID 가져오기 -->
					<b><%=session.getAttribute("memID")%></b>님이 로그인 하셨습니다.
				</td>
			</tr>
			
			<tr>
				<td align="center" bgcolor="<%=value_c%>">
					<input type="submit" value="로그아웃">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>