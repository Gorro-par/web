package db;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class DBAction {
	private static DBAction instance;
	private DataSource ds;
	private Connection conn;
	public DBAction() {
//		String driver = "com.mysql.cj.jdbc.Driver"; 
//		String url ="jdbc:mysql://localhost:3306/webapp?characterEncoding=UTF-8&serverTimezone=UTC";
//		try {
//			Class.forName(driver);
//			conn = DriverManager.getConnection(url, "root", "java");
//	}catch(Exception e) {e.printStackTrace();}
		try {
			InitialContext initctx = new InitialContext();
			Context ctx = (Context)initctx.lookup("java:/comp/env");
			ds = (DataSource)ctx.lookup("jdbc/oracle");
		}catch(NamingException e) {
			e.printStackTrace();
		}
	}
	
	
	public static DBAction getInstance() {
		if(instance == null) {
			instance = new DBAction();
		}
		return instance;
	}
	public Connection getConnection() {
		try {
			conn = ds.getConnection();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
