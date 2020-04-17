<%@ page import="java.sql.*,java.util.Random,java.io.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Statistics</title>
</head>
<body>
	<%
out.println("You can reset Statistics here!!!!");
	
%>
<%@ page import="ShapeStatistics" %>
<%ShapeStatistics.main(null);%>
	<%
out.println("Imported");
	
%>
</body>
</html>