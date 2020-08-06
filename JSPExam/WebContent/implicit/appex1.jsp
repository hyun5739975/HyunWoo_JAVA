<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>초기화 파라미터 값 읽기</title>
</head>
<body>
초기화 파라미터 목록
<ul>
<%
	Enumeration enumDate = application.getInitParameterNames();
	while(enumDate.hasMoreElements()){
		String initParamName = (String) enumDate.nextElement();
%>
	<li><%=initParamName %> = <%=application.getInitParameter(initParamName) %>
<% } %>
</ul>
</body>
</html>