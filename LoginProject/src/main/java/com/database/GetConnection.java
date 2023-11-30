package com.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class GetConnection {
	private static String url = "jdbc:mysql://localhost:3306/login" ;
	private static String user = "root";
	private static String pass = "21AJ1A0535";
	public static Connection con = null ;
	
	public static Connection getConnection()throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(url,user,pass);
		return con;
	}
}
