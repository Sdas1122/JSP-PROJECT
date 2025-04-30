<%@page import="com.FeedbackService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<style>
body {
	display: flex;
	flex-direction: column;
	align-items: center;
}
</style>

<title>Update Feedback Result</title>

</head>
<body>
	<h2>Update Feedback Result</h2>

	<%
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	int rating = Integer.parseInt(request.getParameter("rating"));
	String comments = request.getParameter("comments");

	boolean isUpdated = FeedbackService.updateFeedbackDetailsById(id, name, email, rating, comments);

	if (isUpdated) {
	%>
	<p>Feedback updated successfully!</p>
	<%
	} else {
	%>
	<p>Failed to update feedback. Please try again.</p>
	<%
	}
	%>

</body>
</html>