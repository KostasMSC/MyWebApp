<%@ page import="java.sql.*,java.util.Random,java.io.*"%>
<%@ page import="Demo.MyClass" %>
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
	MyClass my =new MyClass();
	out.println(my.testMethod());
%>

	<%
out.println("Imported");
	
%>
</body>
</html>