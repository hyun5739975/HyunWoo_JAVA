
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import ="logon.LogonDBBean" %>

<%request.setCharacterEncoding("utf-8"); %>

<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");

	LogonDBBean manager = LogonDBBean.getInstance();

	int check = manager.userCheck(id, passwd);

	if(check == 1){
	session.setAttribute("memID", id);
	response.sendRedirect("SessionLogInConfirm.jsp"); //페이지 이동
	
	}else if(check == 0){

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<script type="text/javascript">
alert("비밀번호가 맞지 않습니다.");
history.go(-1);
</script>
<% } else { %>
<script type="text/javascript">
alert("아이디가 맞지 않습니다.");
history.go(-1);
</script>
<% } %>

</body>
</html>