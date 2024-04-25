<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Houses</title>  
</head>  
<body>   
<%@page import="com.house.bean.UserHouse,com.house.bean.UserHouseDao,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Houses List</h1>  
<%  
List<UserHouse> list=UserHouseDao.getAllRecords1();  
request.setAttribute("list",list);  
%> 
<div>
<form action="search.jsp" method="post">
<input type="text" placeholder="Search" name="Location">
<input type="submit" value="search">
</form>
</div> 
  
<table border="1" width="90%">  
<tr><th>Id</th><th>Name</th><th>Mbl</th><th>Rent</th><th>Location</th><th>Housedetails</th>  
<th>Bhk</th><th>Image</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr>
<td>${u.getHouse_Id()}</td>
<td>${u.getName()}</td>
<td>${u.getPhonenumber()}</td>
<td>${u.getRent()}</td> 
<td>${u.getLocation()}</td> 
<td>${u.getHousedetails()}</td>
<td>${u.getBhk()}</td>
<td><img width="80" height="80" src="displayphoto?house_id=${u.getHouse_Id()} "></td>    
<td><a href="deletehouse.jsp?house_id=${u.getHouse_Id()}">Delete</a></td>
</tr>  
</c:forEach>  
</table>  
<br/><a href="housedetails.html">Add New Details</a>  
  
</body>  
</html>