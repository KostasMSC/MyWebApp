<%@ page import="java.sql.*,java.util.Random,java.io.*"%>
<%@ page import="Demo.Connect" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Statistics</title>
</head>
<body>
<h1>You can View Statistics here!!!!</h1>
<%
	Connect.insertTable();
%>

<%
	out.println("Imported");	
%>
</body>
</html>