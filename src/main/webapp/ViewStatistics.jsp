<%@ page import="java.sql.*,java.util.Random,java.io.*"%>
<%@ page import="Demo.Truncate" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Statistics</title>
</head>
<body>
<h1>You can TRuncate Statistics here!!!!</h1>
<%
	Truncate.truncateTable();
%>

<%
	out.println("Imported");	
%>
</body>
</html>