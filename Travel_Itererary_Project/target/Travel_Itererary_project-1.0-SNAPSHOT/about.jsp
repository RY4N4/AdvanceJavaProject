<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/index.html" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Boilerplate</title>
</head>
<body>
<h1>Welcome to About Page</h1>
<%
    // Java code inside scriptlet
    String message = "basic some shit there ";
%>
<p><%= message %></p> <!-- Expression tag to print message -->
</body>
</html>
