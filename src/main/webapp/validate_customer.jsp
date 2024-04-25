<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.prasad.bean.UserDaoCust"%>  
<jsp:useBean id="u" class="com.prasad.bean.UserCust"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
boolean status=UserDaoCust.validate_cust(u);  
if(status){  
response.sendRedirect("success_customerlog.jsp");  
}else{  
response.sendRedirect("error_customerlog.jsp");  
}  
%>
</body>
</html>