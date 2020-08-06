<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name"), 
		   subject = request.getParameter("subject"), 
		   fileName1 = request.getParameter("fileName1"), 
		   fileName2 = request.getParameter("fileName2"), 
		   origfileName1 = request.getParameter("origfileName1"), 
		   origfileName2 = request.getParameter("origfileName2");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드 확인 및 파일 다운로드</title>
</head>
<body>
올린사람 : <%=name %> <br>

제목 : <%=subject %> <br>

파일명 1 : <a href="/JSPExam/upload/<%=fileName1%>">
		<%=origfileName1 %></a> <br>

파일명 2 : <a href="/JSPExam/upload/<%=fileName2%>">
		<%=origfileName2 %></a>

</body>
</html>