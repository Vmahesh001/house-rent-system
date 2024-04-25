<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.spym.bean.UserDao"%>  
<jsp:useBean id="u" class="com.spym.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
boolean status=UserDao.validate(u);  
if(status){  
response.sendRedirect("success1.jsp");  
}else{  
response.sendRedirect("error1.jsp");  
}  
%>
</body>
</html>