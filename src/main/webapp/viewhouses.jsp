<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View houses</title>  
</head>  
<body>  
  
<%@page import="com.spym.bean.User1,com.prasad.bean.UserDaoCust,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Available houses</h1>  
<%  
List<User1> list=UserDaoCust.getAllRecords();  
request.setAttribute("list",list);  
%> 
<div>
<form action="explore.jsp" method="post">
<input type="text" placeholder="Search" name="location">
<input type="submit" value="search">
</form>
</div> 
  
<table border="1" width="90%">  
<!-- <tr><th>Id</th><th>Name</th><th>Phone Number</th><th>Location</th><th>Rent</th>  
<th></th><th>House Details</th><th>BHK</th></tr>   -->
<c:forEach items="${list}" var="u">  
<tr>
<%-- <td>${u.getId()}</td> --%>
<td>${u.getName()}</td>
<td>${u.getPhonenumber()}</td>  
<td>${u.getLocation()}</td>
<td>${u.getRent()}</td>
<td>${u.getHousedetails()}</td>  
<td>${u.getBhk()}</td>  
  

</tr>  
</c:forEach>  
</table>  
<br/>
</body>  
</html>