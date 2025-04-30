<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="f1" method="post" action="/JspProject/FacebookSubmit.jsp">
		<table>
			<tr>
				<td>USER NAME</td>
				<td><input type="text" name="t1"></td>
			</tr>
			<tr>
				<td>PASSWORD</td>
				<td><input type="text" name="t2"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit"></td>
				<td><input type="reset" value="Refresh"></td>
				<br>
				<br>
				<td><a href="/JspProject/facebookAllData.jsp">Show All Data</a></td>

			</tr>


		</table>
	</form>
</body>
</html>