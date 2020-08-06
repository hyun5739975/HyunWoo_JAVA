<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	int bufferSize = out.getBufferSize(); //버퍼의 전체 크기를 알아보는 메소드
    	int remainSize = out.getRemaining(); //현재 버퍼에 남아있는 크기를 알아보는 메소드
    	int usedSize = bufferSize-remainSize; //현재 사용한 버퍼의 크기
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<h2>out 객체 예제 - getBufferSize(), getRemaining(), println() 메서드 사용</h2>

<b>현재 페이지의 버퍼 사용현황</b><br>

출력 버퍼의 전체 크기 : <%=bufferSize%>byte<br>

현재 사용한 버퍼의 크기 : <%=remainSize%>byte<br>

남은 버퍼의 크기 : <%out.println(remainSize);%>byte

</body>
</html>