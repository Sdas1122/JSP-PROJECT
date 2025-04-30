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

<title>Delete Feedback Result</title>

</head>
<body>
	<h2>Delete Feedback Result</h2>

	<%
	int id = Integer.parseInt(request.getParameter("id"));

	boolean isDeleted = FeedbackService.deleteDataById(id);

	if (isDeleted) {
	%>
	<p>Feedback Deleted successfully!</p>
	<%
	} else {
	%>
	<p>Failed to delete feedback. Please try again.</p>
	<%
	}
	%>

</body>
</html>