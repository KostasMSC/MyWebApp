 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>Create a Database using JSP</title>
</head>
<body>
<h1>Create a Database using JSP</h1>
<%
Connection connection = null;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/page_visits", "root", "");
Statement statement = connection.createStatement();
String query = "CREATE DATABASE test";
statement.executeUpdate(query);
out.println("Database test created sucessfully.");

} catch (SQLException e) {
	out.println("SQLException caught: " +e.getMessage());
} catch (InstantiationException e) {
	out.println("InstantiationException caught: " +e.getMessage());
} catch (IllegalAccessException e) {
	out.println("IllegalAccessException caught: " +e.getMessage());
} catch (ClassNotFoundException e) {
	out.println("ClassNotFoundException caught: " +e.getMessage());
}
catch (Exception e)
{
	out.println("Exception caught: " +e.getMessage());
}
%>
</body>
</html> 