<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
   String[] movieList={"해리포터", "어벤져스", "쥬라기공원"};
   request.setAttribute("movieList", movieList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

인기 미국 영화 :
<ul>
    <c:forEach var="movie" items="${movieList }">
               <li>${movie}</li>
    </c:forEach>
</ul>
</body>
</html>
