<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 연산자</title>
</head>
<body>
	<h3 align="center">EL 연산자</h3>
	<p align="center">연산자를 사용, 내장 객체를 사용</p>
	<table align="center" border="1">
		<tr>
			<td><b>표현식</b></td>

			<td><b>값</b></td>
		</tr>

		<tr>
			<td><b>\${2+5}</b></td>

			<td><b>${2+5}</b></td>
		</tr>
		
		<tr>
			<td><b>\${4/5}</b></td>

			<td><b>${4/5}</b></td>
		</tr>
		
		<tr>
			<td><b>\${5 div 6}</b></td>

			<td><b>\${5 div 6 }</b></td>
		</tr>
		
		<tr>
			<td><b>\${5 mod 7}</b></td>

			<td><b>${5 mod 7}</b></td>
		</tr>
		
		<tr>
			<td><b>\${2 < 3}</b></td>

			<td><b>${2 < 3}</b></td>
		</tr>
		
		<tr>
			<td><b>\${2 gt 3}</b></td>

			<td><b>${2 gt 3}</b></td>
		</tr>
		
		<tr>
			<td><b>\${3.1 le 3.2}</b></td>

			<td><b>${3.1 le 3.2}</b></td>
		</tr>
		
		<tr>
			<td><b>\${(5 > 3) ? 5:3}</b></td>

			<td><b>${(5 > 3) ? 5:3}</b></td>
		</tr>
		
		<tr>
			<td><b>\${header[
			"host"]}</b></td>

			<td><b>${header["host"]}</b></td>
		</tr>
		
		<tr>
			<td><b>\${header["user-agent"]}</b></td>

			<td><b>${header["user-agent"]}</b></td>
		</tr>
		
	</table>
</body>
</html>