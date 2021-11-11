package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		String driver = "com.mysql.cj.jdbc.Driver"; 
		String url ="jdbc:mysql://localhost:3306/webapp?characterEncoding=UTF-8&serverTimezone=UTC";
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, "root", "java");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String id, String pwd) {
		String SQL = "SELECT pwd  WHERE ID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).contentEquals(pwd)) {
					return 1;
				}
				else
					return 0;
			}
			return -1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;
	}
}