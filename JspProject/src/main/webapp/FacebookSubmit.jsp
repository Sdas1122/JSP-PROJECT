<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.*" %>   
<%
String uName = request.getParameter("t1");
String password= request.getParameter("t2");


FacebookDTO fb=new FacebookDTO(uName,password);
boolean isInserted=FacebookService.fbData(fb);

if(isInserted)

{
%>
  <h1>Data Inserted Successfully</h1>
 <%}else { %> 
 
  <h1>Data Inserted Successfully</h1>
  <% } %>
</body>
</html>