<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LIC Create Page</title>
</head>
<body>
<form name="f1" method="post" action="/JspProject/loginPage.jsp">
<table align="center">
				<header>
			    <h1 align="center">WELLCOME TO LIC</h1>
			    <hr style="border: 1px solid blue;">
		       </header>
				<tr>
					<td>First Name</td>
					<td><input type="text" name="f1">
					<td>Surname</td>
					<td><input type="text" name="f2"></td>
				</tr>
				<tr>
					<td>Policy Number</td>
					<td><input type="number" name="f3"></td>
					<td>Premium Amount</td>
					<td><input type="number" name="f4"></td>
				</tr>
				<tr>
					<td>New Password</td>
					<td><input type="number" name="f5"></td>
					
				</tr>
				
				
				<tr>
         <td align="center"><input type="submit" value="Sign Up"></td>
         <td align="center"><input type="reset" value="Refresh"> &nbsp; &nbsp; <button onclick="location.href='loginPage.jsp'">Already have an account?</button> </td> 
               </tr>



</table>
</form>
</body>
</html>