<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Insert title here</title>
</head>
<body>
  <jsp:include page="viewadmin.jsp"></jsp:include>

  <script>
    // Use scriptlet to embed Java code
    <% 
       // Your Java code to print an alert message
       out.println("alert('successfully submitted details!..');");
    %>
  </script>
</body>
</html>
