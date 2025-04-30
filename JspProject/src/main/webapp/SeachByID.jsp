<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.*" %>	
<%@page import="java.util.*" %>	
<!DOCTYPE html>

<html>

<script language="javascript">
function goSearch()
{

	//alert("In calll");
	var id=document.getElementById("id").value;
	//alert(id);
	document.getElementById("id").value=id;
	document.f1.action="/JspProject/SeachByID.jsp?id="+id;
	document.f1.method="post";
	document.f1.submit();
	
	
}




</script>
<head>
<title>Search Feedback by ID</title>
</head>
<body>
<%
int id=0;
if(request.getParameter("id")!=null)
{
    id=Integer.parseInt(request.getParameter("id"));
}
%>
<center>
	<h2>Search Feedback by ID</h2>
	<form method="post" name="f1">
		<label for="id">Enter ID:</label> <input type="number" id="id"
			name="id"  value="<%=id %>" required> <input type="submit" value="Search" onclick="goSearch()">
	</form>

<h2>All Feedback Details</h2>
	<table border=1>
		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>Rating</th>
			<th>Comments</th>
		</tr>

		<%
		
		if(request.getParameter("id")!=null)
				{
			        id=Integer.parseInt(request.getParameter("id"));
				
		List<Feedback> feedbackList = FeedbackService.getDataForSelectedId(id);
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
				}
		%>

	</table>
</center>
</body>

</html>