<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.house.bean.UserHouseDao"%>  
<jsp:useBean id="u" class="com.house.bean.UserHouse"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
UserHouseDao.delete1(u);  
response.sendRedirect("viewhousess.jsp");  
%>  
</body>