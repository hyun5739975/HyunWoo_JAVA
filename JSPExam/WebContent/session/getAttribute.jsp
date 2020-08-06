<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	String memeberid = (String)session.getAttribute("MEMBERID");
	String name = (String)session.getAttribute("NAME");
	
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
MemberID : <%=memeberid %> <br><br>
Name : <%=name %>
</body>
</html>