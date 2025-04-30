
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*"%>
    
    <%@page import="com.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>All Feedback Details</h2>
	<table>
		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>Rating</th>
			<th>Comments</th>
		</tr>

		<%
		List<Feedback> feedbackList = FeedbackService.getAllFeedbackData();
		for (Feedback fk : feedbackList) {
		%>
		<tr>
			<td><%=fk.getName()%></td>
			<td><%=fk.getEmail()%></td>
			<td><%=fk.getRating()%></td>
			<td><%=fk.getComments()%></td>
		</tr>
		<%
		}
		%>
		<tr>
				<td><a href="/JspProject/comment.jsp">COMMENT</a>
				<br> <br>
				<td><a href="/JspProject/SeachByID.jsp">Search</a>
			</tr>

	</table>


</body>
</html>