<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	//pageContext Scope에 속성을 저장함
    	pageContext.setAttribute("pageAttribute", "홍길동");
    
    	//pageContext.setAttribute("pageAttribute", "홍길동", PageContext.PAGE_SCOPE);
    	
    	//request Scope에 속성을 저장함
    	request.setAttribute("requestAttribute", "010-1234-1234");
    	//pageContext.setAttribute("pageAttribute", "010-1234-1234", PageContext.REQUEST_SCOPE);
    	
    	// sessions Scope에 속성을 저장함
    	session.setAttribute("sessionAttribute", "hong@naver.com");
    	//pageContext.setAttribute("pageAttribute", "hong@naver.com", PageContext.SESSION_SCOPE);
    	
    	//apliction Scope에 속성을 저장함
    	application.setAttribute("applicationAttribute", "IT");
       	//pageContext.setAttribute("pageAttribute", "IT", PageContext.APPLICATION_SCOPE);
    	    	
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<ul>
	<li>이름 : <%=pageContext.getAttribute("pageAttribute") %> </li>
	<li>전화 : <%=request.getAttribute("requestAttribute") %> </li>
	<li>메일 : <%=session.getAttribute("sessionAttribute") %> 	</li>
	<li>회사 : <%=application.getAttribute("applicationAttribute") %> </li>
	
</ul>
</body>
</html>