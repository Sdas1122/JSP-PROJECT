<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%
   String customerName=request.getParameter("cName");
  
  String feedback=request.getParameter("feed");
  
  %>
  Welcome <%=customerName %> to our application 
 <br> Your account no is <%=session.getAttribute("acNumber")  %>
 <br> Your have given feedback: <%=feedback %>
</body>
</html>