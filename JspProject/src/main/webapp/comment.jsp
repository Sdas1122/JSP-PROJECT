<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Feedback Form</h2>
	<form name="f1" method="post" action="/JspProject/ComentSubmit.jsp">

		

			<label for="name">Name:</label> <input type="text" id="name"
				name="name" required><br> <br> <label for="email">Email:</label>
			<input type="email" id="email" name="email" required><br>
			<br> <label for="rating">Rating:</label> <select id="rating"
				name="rating">
				<option value="5">Excellent</option>
				<option value="4">Very Good</option>
				<option value="3">Good</option>
				<option value="2">Fair</option>
				<option value="1">Poor</option>
			</select><br> <br> <label for="comments">Comments:</label><br>
			<textarea id="comments" name="comments" rows="4" cols="30"></textarea>
			<br> <br> <input type="submit" value="Submit">
			<br> <br>
		<tr>
				<td><a href="/JspProject/Allcomment.jsp">Display All Data</a>
				<br> <br>
				<td><a href="/JspProject/SeachByID.jsp">Search</a>
				<br> <br>
				<td><a href="/JspProject/DeleteFeedback.jsp">Delete Data</a>
			</tr>


	</form>

</body>
</html>