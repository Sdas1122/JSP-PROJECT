package com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BankingService {

	
	public static boolean insertBankingData(String cName,int acNumber,String acType,String cFeedback) {
	
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		boolean isInserted=false;
		
		try {
			conn=ConnectionFactory.getDBConnection();
			String sql= "insert into Banking(CUSTOMER_ID,CUSTOMER_NAME,ACCOUNT_NUMBER,ACCOUNT_TYPE,CUSTOMER_FEEDBACK) values(?,?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, autogenerateCustomerID());
			pstmt.setString(2, cName);
			pstmt.setInt(3, acNumber);
			pstmt.setString(4, acType);
			pstmt.setString(5, cFeedback);
			pstmt.execute();
			isInserted=true;
		} catch (Exception e) {
			System.out.println("Exception Occured" + e.getMessage());
			e.printStackTrace();
		}
		return isInserted;
	}
	
	public static int autogenerateCustomerID() {
		int cid=0;
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			conn=ConnectionFactory.getDBConnection();
			String sql="select Max(CUSTOMER_ID) from Banking";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				cid = rs.getInt(1);
				cid = cid + 1;
			}
			
			
			
		} catch (Exception e) {
			System.out.println("Exception Occured" + e.getMessage());
			e.printStackTrace();
		}
		return cid;
	}
}
