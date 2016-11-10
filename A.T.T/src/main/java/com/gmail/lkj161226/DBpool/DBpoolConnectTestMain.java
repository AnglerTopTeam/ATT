package com.gmail.lkj161226.DBpool;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBpoolConnectTestMain {

	public static void main(String[] args) {
		DBConnectionManager db = DBConnectionManager.getInstance();
		Connection cn = null;
		PreparedStatement ps = null; 
		ResultSet rs =null;
		System.out.println("DB test start...");
		
		String sql = "SELECT count(*) FROM member"; 
		try {
			cn = db.getConnection(); 
			ps = (PreparedStatement) cn.prepareStatement( sql ); 
			rs = ps.executeQuery(); 
			if ( rs.next() ) {  
				System.out.println("count : " + rs.getInt(1) );
				rs.close();
			}
		} catch (Exception e) {
			System.out.println("db error : "+e.getMessage());
		}
	}

}