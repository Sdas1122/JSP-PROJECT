package com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class SalesService {
	
	
	public static boolean insertSalesData(Sales sales)
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
        boolean isInserted=false;
		try {
			conn = ConnectionFactory.getDBConnection();
			String sql = "insert into sales values (?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(sales.getSid()));
			pstmt.setString(2, sales.getItemName());
			pstmt.setInt(3, Integer.parseInt(sales.getPrice()));
			pstmt.execute();
			isInserted=true;

		} catch (Exception e) {
          System.out.println("Exception Message:"+e.getMessage());
		}
		return isInserted;

	}
	public static ArrayList<Sales> showId() {
	    
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<Sales> list = new ArrayList<Sales>();

		try {

			conn = ConnectionFactory.getDBConnection();
			String sql= "update purchase set ITEM_NAME = ?,ITEM_PRICE =? where S_ID= ?";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Sales sales = new Sales();
				sales.setSid(rs.getString("sid"));
				sales.setItemName(rs.getString("itemName"));
				sales.setPrice(rs.getString("price"));
				list.add(sales);

			}

		} catch (Exception e) {
			e.printStackTrace();

		}
		return list;

}
		
	}
