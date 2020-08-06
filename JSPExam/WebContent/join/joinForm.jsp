<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<style type="text/css">
#formArea {
	margin:auto;
	width:400;
	border:1px solid gray;
	text-align: center;
}

h1 {
	text-align:center;
}

table {
	width:380px;
	margin: auto;
	text-align: center;
}
</style>
</head>
<body>
<section id="formArea">
<h1>Member Info Input</h1>
<form action="joinChk.jsp" method="post">
	<table>
		<tr>
			<td><label for="id">ID : </label></td>
			<td><input type="text" id="id" name="id"></td>
		</tr>
	
		<tr>
			<td><label for="pass">PASS : </label></td>
			<td><input type="password" id="pass" name="pass"></td>
		</tr>
		
		<tr>
			<td><label for="name">NAME : </label></td>
			<td><input type="text" id="name" name="name"></td>
		</tr>
		
		<tr>
			<td><label for="gendar">GENDAR : </label></td>
			<td>
			<input type="radio" value="1" id="gendar" checked="checked" name="gendar">Male
			<input type="radio" value="2" id="gendar" name="gendar">Female</td>
			
		</tr>
	
		<tr>
			<td><label for="age">AGE : </label></td>
			<td><input type="text" name="age" id="age"></td>
		</tr>

		<tr>
			<td><label for="email">Email : </label></td>
			<td><input type="text" name="email" id="email"></td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="submit" value="Register">
				<input type="reset" value="Reset">
			</td>
		</tr>
		
	</table>
</form>
</section>
</body>
</html>