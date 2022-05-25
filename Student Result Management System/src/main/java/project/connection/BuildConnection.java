package project.connection;
//import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;

public class BuildConnection {
	/*
	 * private String jdbcURL = "jdbc:mysql://localhost:3306/project?useSSL=false";
	 * private String jdbcUsername = "root"; private String jdbcPassword =
	 * "111@Gudu";
	 */ 
	
	 public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?useSSL=false","root","111@Gudu");
			return connection;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}
	}

}
