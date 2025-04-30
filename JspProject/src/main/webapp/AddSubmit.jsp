<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

  int a=Integer.parseInt(request.getParameter("t1"));
  int b=Integer.parseInt(request.getParameter("t2"));
  int c=a+b;


%>

<h1>Sum is <%=c %></h1>