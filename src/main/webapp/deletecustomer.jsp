<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.spym.bean.UserDao"%>  
<jsp:useBean id="u" class="com.spym.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
UserDao.delete(u);  
response.sendRedirect("viewadmin.jsp");  
%>  
</body>
</html>