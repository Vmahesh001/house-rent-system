<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.prasad.bean.UserDaoCust"%>  
<jsp:useBean id="u" class="com.prasad.bean.UserCust"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=UserDaoCust.save(u);  
if(i>0){  
response.sendRedirect("success_cust_log.jsp");  
}else{  
response.sendRedirect("error_cust_log.jsp");  
}  
%>  