package com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FeedbackService1 {
	public static ArrayList<Integer> getAllDataById() {

		ArrayList<Integer> fid = new ArrayList<Integer>();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = ConnectionFactory.getDBConnection();
			String sql = "SELECT id FROM feedback ORDER BY id ";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				fid.add(id);

			}

		} catch (SQLException e) {
			System.out.println("Exception Message:" + e.getMessage());
		}
		return fid;

	}
}
