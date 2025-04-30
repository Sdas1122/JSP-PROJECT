<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.*"%>

<%

    String cName=request.getParameter("cName");
    int acNumber = Integer.parseInt(request.getParameter("acNumber"));
	String acType=request.getParameter("acType");
	String cFeedback=request.getParameter("cFeedback");
	
	session.setAttribute("acNumber",acNumber);
	
	
	boolean isInserted= BankingService.insertBankingData(cName,acNumber,acType,cFeedback);
	
%>
<input type="hidden" name="feed" value="<%=cFeedback %>">



<jsp:forward page="/DashBoard.jsp?cName=<%=cName %>"></jsp:forward>
 