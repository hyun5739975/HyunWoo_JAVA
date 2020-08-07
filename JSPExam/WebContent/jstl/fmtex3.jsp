<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자 형식, 날짜 형식</title>
</head>
<body>
number :
<fmt:formatNumber value="12345.678" type="number"/> <br><br>

currency :
<fmt:formatNumber value="12345.678" type="currency"/> <br><br>

percent :
<fmt:formatNumber value="12345.678" type="percent"/> <br><br>

pattern =".0" :
<fmt:formatNumber value="12345.678" pattern=".0"/> <br><br>

<c:set var="now" value="<%=new java.util.Date() %>"/>
<c:out value="${now }" /><br><br>

Date : <fmt:formatDate value="${now }" type="date"/> <br>
TIME : <fmt:formatDate value="${now }" type="time"/> <br>
Day : <fmt:formatDate value="${now }" type="both"/> <br>

</body>
</html>