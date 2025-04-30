<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*"%>
<%@ page import="com.*"%>
<!DOCTYPE html>
<html>



<head>

<style>
form, h2 {
	display: flex;
	flex-direction: column;
	align-items: center;
}
</style>
<script language="javascript">
	function goData() {

		
		var id = document.getElementById("id").value;
		//alert(id);
		//document.getElementById("id").value = id;
		document.f2.action = "/JspProject/UpdateFeedback.jsp?id=" + id;
		document.f2.method = "post";
		document.f2.submit();

	}
</script>

<title>Update Feedback</title>
</head>
<body>

<%
   Feedback feedback=null;
	int id = 0;
	if (request.getParameter("id") != null) {
		id = Integer.parseInt(request.getParameter("id"));
		feedback= new FeedbackService().getDataForSelectedId(id);
	}
	%>
	
	<h2>Update Feedback</h2>

	<form name="f2" action="UpdateFeedbackSubmit.jsp" method="post">
		<label for="id">Select Feedback ID:</label> <select name="id" id="id" required onchange="goData()">
		    <option value="NA" >Please select id</option>
			<%
			
			ArrayList<Integer> idlist = FeedbackService.getAllDataById();
			for (Integer ids : idlist) {
				
			%>
			<option value="<%=ids%>" <% if(ids.equals(id)) out.println("selected"); %>><%=ids %></option>
			<%
			}
			%>
		</select> <br> <br> <label>Name:</label> <input type="text"
			name="name" required value="<%=feedback!=null ?feedback.getName():"" %>"><br> <br> <label>Email:</label>
		<input type="email" name="email" required value="<%=feedback!=null ?feedback.getEmail():"" %>"><br> <br>
		<label>Rating:</label> <input type="number" name="rating" min="1"
			max="5" required value="<%=feedback!=null ?feedback.getRating():"" %>"><br> <br> <label>Comments:</label>
		<input type="text" name="comments" required value="<%=feedback!=null ?feedback.getComments():"" %>"></input>
		<br> <br> <input type="submit" value="Update Feedback">
	</form>
</body>
</html>
    