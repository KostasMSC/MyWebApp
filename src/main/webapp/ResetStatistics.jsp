<%@ page import="java.sql.*,java.util.Random,java.io.*"%>
<%@ page import="Demo.ShapeStatistics" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Statistics</title>
</head>
<body>
	<%
out.println("You can reset Statistics here!!!!");
	out.println(ShapeStatistics.testMethod());
	out.println(ShapeStatistics.main(null));
%>

	<%
out.println("Imported");
	
%>
</body>
</html>