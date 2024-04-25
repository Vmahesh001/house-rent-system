<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>success</title>
</head>
<body>
<%@page import="com.srikanth.bean.UserDaoCustView"%>  
<jsp:useBean id="u" class="com.srikanth.bean.UserSrinkanth"></jsp:useBean>   
<jsp:setProperty property="*" name="u"/>  
<%  
int i=UserDaoCustView.save(u);  
if(i>0){  
response.sendRedirect("successcustomerview.jsp");  
}else{  
response.sendRedirect("error.jsp");  
}  
%>
</body>