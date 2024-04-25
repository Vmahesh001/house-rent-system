<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.prasad.bean.UserDaoCust,com.spym.bean.User1,com.prasad.bean.UserCust"%>  
<%  
String name=request.getParameter("name");  
User1 u=UserDaoCust.getRecordByName(name);
%> 
<h1><%=u.getName()%></h1>
<table>
<tr>
<td>Name</td><td>:&nbsp;<%=u.getName() %></td>
</tr>
<tr>
<td>Phone Number</td><td>:&nbsp;<%=u.getPhonenumber() %></td>
</tr>
<tr>
<td>location</td><td>:&nbsp;<%=u.getLocation() %></td>
</tr>
<tr>
<td>Rent</td><td>:&nbsp;<%=u.getRent() %></td>
</tr>

<tr>
<td>House Details</td><td>:&nbsp;<%=u.getHousedetails() %></td>
</tr>
<tr>
<td>BHK</td><td>:&nbsp;<%=u.getBhk() %></td>
</tr>
</table> 
</body>
</html>