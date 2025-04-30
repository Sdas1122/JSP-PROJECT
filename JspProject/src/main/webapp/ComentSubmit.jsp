
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*"%>
    <%@page import="com.*"%>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String rating = request.getParameter("rating");
String comments = request.getParameter("comments");

//Feedback feedback = new Feedback(name, email, rating, comments);
boolean isInserted = FeedbackService.insertFeedbackData(name, email, rating, comments);

if (isInserted) {
%>

<p>Feedback Submitted Successfully</p>
<%
} else {
%>
<p>Failed to Submit Feedback, Try Again</p>
<%
}
%>
  