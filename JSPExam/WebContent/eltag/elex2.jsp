<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="actiontag.Customer, java.util.ArrayList" %>

<%

	ArrayList<String> singer = new ArrayList<String>();
	singer.add("블랙핑크");
	singer.add("아이즈원");
	request.setAttribute("singer", singer);
	
	Customer[] customer = new Customer[2];
	customer[0] = new Customer();
	customer[0].setName("지수");
	customer[0].setEmail("ji@naver.com");
	customer[0].setPhone("010-1111-2222");
	
	customer[1] = new Customer();
	customer[1].setName("사쿠라");
	customer[1].setEmail("sakura@naver.com");
	customer[1].setPhone("010-2222-3333");
	
	request.setAttribute("customer", customer);
	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 표현언어</title>
</head>
<body>
	<ul>
		<li>${singer[0]}, ${singer[1]}</li>
	</ul>
	
	<ul>
		<li>이름: ${customer[0].name } </li>
		<li>이메일: ${customer[0].email } </li>
		<li>연락처: ${customer[0].phone } </li>
	</ul>

	<ul>
		<li>이름: ${customer[1].name } </li>
		<li>이메일: ${customer[1].email } </li>
		<li>연락처: ${customer[1].phone } </li>
	</ul>

</body>
</html>