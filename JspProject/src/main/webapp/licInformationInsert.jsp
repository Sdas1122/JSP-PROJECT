<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Information Page</title>
</head>
<body>
<form name="f1" method="post" action="/JspProject/">
<table align="center">
<header>
			    <h1 align="center">WELLCOME TO LIC</h1>
			    <hr style="border: 1px solid blue;">
		       </header>
				<tr>
					<td>Policy Number</td>
					<td><input type="number" name="x1"></td>
					<td>Premium Amount</td>
					<td><input type="number" name="x2"></td>
				</tr>
				<tr>
					<td>Policy Maturity Date</td>
					<td><input type="number" name="x3"></td>
					
				</tr>
				
				<tr>
					<td>Date of Birth</td>
					<td><input type="text" name="x4"></td>
					<td>Gender</td>
					<td><input type="text" name="x5"></td>
				</tr>
				<tr>
					<td>Phone Number</td>
					<td><input type="number" name="x6"></td>
					<td>Email Address</td>
					<td><input type="text" name="x7"></td>
				</tr>
				
				
				
				<tr>
         <td align="center"><input type="submit" value="Submit"></td>
         <td align="center"><input type="reset" value="Refresh"></td> 
               </tr>



</table>
</form>

</body>
</html>