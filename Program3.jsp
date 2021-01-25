<%@ page import ="test.JSP1" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP2</title>
</head>
<body>
sum of a and b is <%= JSP1.add(5,4)%><br/>
difference of a and b is <%=JSP1.sub(4, 2) %><br/>
</body>
</html>