<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 영문 설정은 6번 라인 추가 한글 설정은 6번 라인 주석 처리 -->
<fmt:setLocale value="en_us"/>    
<fmt:bundle basename="bundle.testBundle">
<fmt:message key="TITLE" var="title"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title} </title>
</head>
<body>
<fmt:message key="NAME"/>
<br>
<!-- 파라미터 id가 없으면 -->
<c:if test="${! empty param.id }">


<fmt:message key="MESSAGE">
	<fmt:param value="${param.id }"/>
</fmt:message>

</c:if>
</body>
</html>
</fmt:bundle>