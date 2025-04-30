<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Banking Form</h2>
	<form name="f1" method="post" action="/JspProject/BankingSubmit2.jsp">

		

			<label for="cName">Customer Name:</label> <input type="text" id="cName"
				name="cName" required><br> <br> 
				 <label for="acType">Account Type:</label> 
			<select id="acType"	name="rating">
				<option value="2">Saving</option>
				<option value="1">Current</option>
			</select><br> <br> 
			<label for="acNumber">Account Number:</label>
			<input type="number" id="acNumber" name="acNumber" required>
			<br>
			<br>
			<label for="cFeedback">Customer Feedback:</label><br>
			<textarea id="cFeedback" name="cFeedback" rows="4" cols="30"></textarea>
			<br> <br> <input type="submit" value="Submit">
			<br> <br>
		   

	</form>

</body>
</html>