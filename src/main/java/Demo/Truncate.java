package Demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Truncate {
	public static void truncateTable() {
		Connection conn;

		try {
			// obtain a connection to the DB, use DB driver, URL, credentials
			String connURL = "jdbc:mysql://localhost:3306/page_visits";
			Class.forName("com.mysql.jdbc.Driver").newInstance();
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
	}
}
