<%@ page import="java.sql.*, com.mysql.jdbc.Driver"%>
<html>
<head>
<title>JDBC Connection example</title>
</head>

<body>
<h1>JDBC Connection example</h1>

<%

  String db = "page_visits";
  String user = "root";
  try {
    java.sql.Connection con;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db, user, "123456");
    out.println (db+ "database successfully opened.");
	} catch (ClassNotFoundException e) {
		out.println("ClassNotFoundException caught: " +e.getMessage());
	}
  catch(SQLException e) {
    out.println("SQLException caught: " +e.getMessage());
  }
%>

</body>
</html>