<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>썸네일 이미지</title>
</head>
<body>
<div align="center">
<h3>썸네일 이미지 폼</h3>
	<!-- multipart/form-data : 모든 문자를 인코딩하지 않음을 명시함. 이 방식은 <form> 요소가 파일이나 이미지를 서버로 전송할 때 주로 사용함. -->
	<form action="thumbnail.jsp" method="post" enctype="multipart/form-data">
		
		이미지 파일 : <input type="file" name="filename">
		<p><input type="submit" value="전송"></p>
		
	</form>
</div>
</body>
</html>