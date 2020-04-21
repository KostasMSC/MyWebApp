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
out.println("You can view Insert Statistics here!");

Connection conn;

try {
	// obtain a connection to the DB, use DB driver, URL, credentials
	String connURL = "jdbc:mysql://localhost:3306/page_visits";
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(connURL, "coursework", "u[4[W67Pm}P;\6~G");
	
	Statement stmt0 = conn.createStatement();

	/*
	 * generate statistics
	 */
	Statement stmt1 = conn.createStatement();
	// calculate number of visits per shape
	ResultSet rs1 = stmt1
			.executeQuery("SELECT SHAPE, COUNT(*) NUM FROM PAGE_VISITS GROUP BY SHAPE ORDER BY SHAPE");
	
	Statement stmt2 = conn.createStatement();
	// calculate visit timestamps per shape
	ResultSet rs2 = stmt2.executeQuery("SELECT SHAPE, TS FROM PAGE_VISITS ORDER BY SHAPE asc ,TS asc");
	

        // Creating a File object that represents the disk file. 
//         PrintStream o = new PrintStream(new File("Output.txt")); 
  
        // Store current System.out before assigning a new value 
//         PrintStream console = System.out; 
  
        // Assign o to output stream 
//         System.setOut(o);
        
		// for each shape print its name and number of visits, followed by the list of visit timestamps
		
		while (rs1.next()) {
			int num = rs1.getInt("NUM");
			out.println("<h3>" + rs1.getString("SHAPE") + ": " + num + " visit(s).</h3>");
			out.println("<ul>");
			for (int idx = 0; idx < num; idx++) {
				rs2.next();
				out.println("<li>" + rs2.getTimestamp("TS") + "</li>");
			}
			out.println("</ul>");
		}

	/*
	 * release resources
	 */
	stmt0.close();
	rs1.close();
	stmt1.close();
	rs2.close();
	stmt2.close();
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