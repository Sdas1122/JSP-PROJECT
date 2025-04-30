<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.*" %>   
<%
String sid = request.getParameter("t1");
String itemName= request.getParameter("t2");
String itemPrice = request.getParameter("t3");

Sales sales=new Sales(sid,itemName,itemPrice);
boolean isInserted=SalesService.insertSalesData(sales);

if(isInserted)

{
%>
  <h1>Data Inserted Successfully</h1>
 <%}else { %> 
 
  <h1>Data Inserted Successfully</h1>
  <% } %>