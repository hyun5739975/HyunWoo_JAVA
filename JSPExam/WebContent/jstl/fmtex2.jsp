<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>
<%--<%request.setCharacterEncoding("utf-8"); %> 5번라인으로 대채--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
파라미터 : <c:out value="${param.id }"/>
<form action="fmtex2.jsp" method="post"></form>
	<input type="text" name="id">
	<input type="submit" value="확인">


</body>
</html>