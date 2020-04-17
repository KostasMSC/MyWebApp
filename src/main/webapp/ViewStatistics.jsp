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
out.println("You can view Minify Statistics here!");
	
	// number of table rows to generate
	final int ITERN = 10;
	
	// max time to sleep between table row insertions
	final int MAXSLEEP = 1000;

	// shape names
	final String[] shapes = { "Circle", "Ellipse", "Right Triangle", "Right Rectangle",
			"Isosceles Trapezoid", "Isosceles Triangle", "Equilateral Triangle", "Square", "Pentagon", "Hexagon" };
	
Connection conn;

try {
	// obtain a connection to the DB, use DB driver, URL, credentials
	String connURL = "jdbc:mysql://localhost:3306/page_visits";
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(connURL, "root", "123456");

	/*
	 * reset the DB
	 */
	Statement stmt0 = conn.createStatement();
	stmt0.executeUpdate("TRUNCATE PAGE_VISITS");
    

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

</body>
</html>