<%@ page import="java.sql.*,java.util.Random,java.io.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Circle</title>
</head>
<body bgcolor="FEF9E7">
<font face="verdana">
	<h1>Hello!</h1>

	<p>
	<p>This is a <font color="red">RED Circle</font>.
	<p>
	<p>
	<svg width="150" height="150" xmlns="http://www.w3.org/2000/svg">
    	<circle cx="75" cy="75" r="75"
    		style="fill:red;stroke:black;stroke-width:1" />
	</svg>
<%
	// shape names
	String shape = this.getClass().getSimpleName().replaceFirst("_jsp","");

Connection conn;

try {
	// obtain a connection to the DB, use DB driver, URL, credentials
	String connURL = "jdbc:mysql://localhost:3306/page_visits";
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(connURL, "root", "123456");
	
	Statement stmt0 = conn.createStatement();


		// add the corresponding shape into the DB along with timestamp
		stmt0.executeUpdate("INSERT INTO PAGE_VISITS (SHAPE, TS) VALUES ('" + shape + "', NOW())");


	/*
	 * release resources
	 */
	stmt0.close();
	conn.close();
} catch (SQLException e) {
	e.printStackTrace();
} catch (InstantiationException e) {
	e.printStackTrace();
} catch (IllegalAccessException e) {
	e.printStackTrace();
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
%>
</font>
</body>
</html>