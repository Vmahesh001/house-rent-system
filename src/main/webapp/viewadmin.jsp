<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Owners List</title>
  <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 20px;
            padding: 20px;
            background-color: #f4f4f4;
        }

        h1 {
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        a {
            text-decoration: none;
            color: #3498db;
        }

        a:hover {
            color: #e74c3c;
        }
    </style>
</head>
<body>
<%@page import="com.spym.bean.UserDao,com.spym.bean.User,java.util.List"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Owners List</h1>  
  
<%  
List<User> list=UserDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
 
 
<table border="1" width="90%"> 
<tr><th>Id</th><th>Name</th><th>Phone number</th><th>Gender</th><th>Email</th><th>Password</th>  
<th>Address</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr> <td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPhonenumber()}</td><td>${u.getGender() }</td><td>${u.getEmail()}</td>  
<td>${u.getPassword()}</td><td>${u.getAddress()}</td>

<td><a href="deletecustomer.jsp?id=${u.getId()}">Delete</a></td></tr>  
</c:forEach>  
</table>  
 <br/><a href="addcustomerbya.html">Add New User</a>
</body>  
</html>