<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.srikanth.bean.UserDaoCustView"%>  
<jsp:useBean id="u" class="com.srikanth.bean.UserSrinkanth"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
UserDaoCustView.delete(u);  
response.sendRedirect("viewcustomer.jsp");  
%>  
</body>
</html>