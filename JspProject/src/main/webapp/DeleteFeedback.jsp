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
		document.f2.action = "/JspProject/DeleteFeedback.jsp?id=" + id;
		document.f2.method = "post";
		document.f2.submit();

	}
</script>

<title>Delete Feedback</title>
</head>
<body>


	
	<h2>delete Feedback</h2>

	<form name="f2" action="DeleteFeedbackSubmit.jsp" method="post">
		<label for="id">Select Feedback ID:</label> <select name="id" id="id">
		    <option value="NA" >Please select id</option>
			<%
			
			ArrayList<Integer> idlist = FeedbackService.getAllDataById();
			for (Integer ids : idlist) {
				
			%>
			<option value="<%=ids%>"><%=ids %></option>
			<%
			}
			%>
		
		<br> <br> <input type="submit" value="Delete Feedback">
	</form>
</body>
</html>
    