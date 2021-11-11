package UserController;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn; 
	private PreparedStatement pstmt; 
	private ResultSet rs;

public UserDAO() {
	try { 
		String DB_URL = "jdbc:mysql://localhost:3306/webapp?characterEncoding=UTF-8&serverTimezone=UTC"; 
		String userName = "root"; 
		String password = "java"; 
		Class.forName("com.mysql.jdbc.Driver"); 
		conn = DriverManager.getConnection(DB_URL,userName,password); 
		} 
	catch(Exception e) { 
		e.printStackTrace(); 
		} 
	}
	public int LoginCheck(String ID, String PWD) {
		String sql = "SELECT PWD FROM login_db WHERE ID=?"; 
		try { 
			pstmt = conn.prepareStatement(sql); 
			pstmt.setString(1, ID); 
			rs = pstmt.executeQuery();

			if(rs.next()) { 
				if(rs.getString(1).contentEquals(PWD)) { 
					return 1; 
				} 
				else 
					return 0; 
			} 
			return -1; 
		} catch(Exception e) { 
			e.printStackTrace(); 
		} 
		return -2; 
	} 
	
}
