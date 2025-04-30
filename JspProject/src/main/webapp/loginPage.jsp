<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<form name="f1" method="post"
		action="/JspProject/licInformationInsert.jsp">
		<header>
			<h1 align="center">WELLCOME TO LIC</h1>
			<hr style="border: 1px solid blue;">
		</header>
		<table align="center">
			<tr>
				<td>POLICY NUMBER</td>
				<td><input type="number" name="t1"></td>
			</tr>
			<tr>
				<td>PASSWORD</td>
				<td><input type="text" name="t2"></td>
			</tr>
			<tr>
				<td><button
						onclick="location.href='/JspProject/licInformationInsert.jsp'">SUBMIT</button>
				</td>
				<td><input type="reset" value="REFRESH"> &nbsp; &nbsp;
					<button onclick="location.href='/JspProject/licCreateAccount.jsp'">CREATE
						A ACCOUNT</button></td>

			</tr>



		</table>



	</form>





</body>
</html>