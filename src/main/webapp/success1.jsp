<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>success</title>
</head>
<body>
<jsp:include page="ownerhome.html"></jsp:include>

  <script>
    // Use scriptlet to embed Java code
    <% 
       // Your Java code to print an alert message
       out.println("alert('successully logged in...');");
    %>
  </script>
</body>
</html>