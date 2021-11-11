//package user;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//
//import db.DBAction;
//
//public class UserDAO {
//	
//	private Connection conn = DBAction.getInstance().getConnection();
//	private PreparedStatement pstmt;
//	private ResultSet rs;
//	
//	public UserDAO() {
//		try {
//		}catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//	
//	public int login(String id, String pwd) {
//		String SQL = "SELECT pwd FROM USER WHERE id = ?";
//		try {
//			pstmt = conn.prepareStatement(SQL);
//			pstmt.setString(1, id);
//			rs = pstmt.executeQuery();
//			if(rs.next()) {
//				if(rs.getString(1).contentEquals(pwd)) {
//					return 1;
//				}
//				else
//					return 0;
//			}
//			return -1;
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return -2;
//	}
//}