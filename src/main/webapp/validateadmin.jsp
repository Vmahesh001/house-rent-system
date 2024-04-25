<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.spym.bean.UserDao"%>  
<jsp:useBean id="p" class="com.spym.bean.UserAdmin"></jsp:useBean>  
<jsp:setProperty property="*" name="p"/>  
<%  
boolean status=UserDao.validate_admin(p);  
if(status){  
response.sendRedirect("successadmin.jsp");  
}else{  
response.sendRedirect("erroradmin.jsp");  
}  
%>
</body>
</html>