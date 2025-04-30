<%@page import="oracle.net.aso.f"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="com.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>Show Data</h2>
<table border="1">
<tr>
    <th> User Name</th>
    <th> Password </th>
</tr>
<%
 List<FacebookDTO> facebookDTOList = FacebookService.showAllData();
for(FacebookDTO fk : facebookDTOList){
%>
  <tr>
     <td> <%=fk.getuName()%></td>
     <td> <%=fk.getPassword()%></td>
  </tr>
      <%
}
      %>
</table>

</body>
</html>