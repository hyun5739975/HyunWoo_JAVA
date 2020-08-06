<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!
    	private int numOne=0;
    	
    	
    	public void jspInit(){ //메소드 재정의
    		//최초 호출시에만 동작하는 메소드
    		System.out.println("jspInit() 호출");
 			   		
    	}
    	
    	public void jspDestroy(){ //메소드 재정의
    		//최초 호출시에만 동작하는 메소드
    		System.out.println("jspDestroy() 호출");
 			   		
    	}

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Life Cycle</title>
</head>
<body>
	<%
 	int numTwo = 0;
 	numOne++;
 	numTwo++;
	 %>
	 
	 <ul>
	 <li>Number One : <%=numOne %></li> <!-- 새로고침 할때 마다 증가 -->
	 <li>Number Two : <%=numTwo %></li> <!-- 새로고침 할때 마다 초기화 -->
	 </ul>
</body>
</html>