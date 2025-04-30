<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="f1" method="post" action="/JspProject/SlalesSubmit.jsp">
<table>
	<tr><td> Enter Sales ID</td>
	<td><input type="text" name="t1"></td>
	</tr>
	<tr><td> Enter Item Name</td>
	<td><input type="text" name="t2"></td>
	</tr>
	<tr> <td>Enter Item Price</td>
	<td><input type="text" name="t3"></td>
	</tr>
	
	 <tr>
         <td><input type="submit" value="Submit"></td>
         <td><input type="reset" value="Refresh"></td>
       </tr>  
</table>
</form>
</body>
</head>
</html>