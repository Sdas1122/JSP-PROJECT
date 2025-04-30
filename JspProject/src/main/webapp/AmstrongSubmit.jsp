<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

long temp=Long.parseLong(request.getParameter("t1"));
  long  tot=0;
  long n= temp;
  long res,rem;
  
while (n!= 0)
{
	rem = n % 10; 
	System.out.println(rem);
    n = n / 10;   
    System.out.println(n);
    tot = tot + (long)Math.pow(rem, 4);
    System.out.println(tot);
}

if (temp == tot)
    out.println(temp + " is an Armstrong number.");
  else
    out.println(temp + " is not an Armstrong number.");
%>
