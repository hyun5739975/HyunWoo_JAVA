<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration"%>
<%@ page import="java.util.Map"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라미터 출력</title>
</head>
<body>
	<b>request.getParameter()메소드</b> name 파라미터 :
	<%=request.getParameter("name") %><br>
	<br> address 파라미터 :
	<%=request.getParameter("address") %><br>
	<br>	<br>	<br>
	<b>request.getParameterValues() 메소드</b>
	<br>	<br>
	<%
	String [] values = request.getParameterValues("pet"); //배열로 준 것은 check box 그룹에 포함되어 있어서
	
	if(values != null){
		for(int i=0; i<values.length; i++){

	%>
	<%=values[i]%>

	<%
		} 
	}
    %>
<br><br><br>
<b>request.getParameterNames() 메소드</b>
<%
	Enumeration enumData = request.getParameterNames();
	while(enumData.hasMoreElements()){ //다음 요소가 있는지 없는지 확인 있으면 true/false
	String name = (String)enumData.nextElement();
%>

<%=name%>
<%} %>
<br><br><br>
<b>request.getParameterMap() 메소드</b>
<%
	Map parameMap = request.getParameterMap();
	String nameParam[]= (String[])parameMap.get("name");
	
	if(nameParam != null){
%>
name = <%=nameParam[0]%>
<%} %>

</body>
</html>