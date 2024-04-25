<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.spym.bean.UserDao"%>  
<jsp:useBean id="u" class="com.spym.bean.User1"></jsp:useBean>   
<jsp:setProperty property="*" name="u"/>  
<%  
int i=UserDao.save1(u);  
if(i>0){  
response.sendRedirect("success1.jsp");  
}else{  
response.sendRedirect("error1.jsp");  
}  
%>
</body>
</html>