package Dao;

import java.io.PrintWriter;
import java.sql.*;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

import org.apache.catalina.connector.Response;

import Db.DBAction;



public class UserinfoDao {
	public boolean exist(String id,String pw) {
		
		Connection conn = DBAction.getInstance().getConnection();
		Statement stmt = null;
		try {
			stmt = conn.createStatement();
			int num = stmt.executeUpdate("select * from member where id='"+id+"'and pw='"+pw+"'");
			
			if(num==0)return false;
			System.out.println(num);
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return true;
		
	}
}
