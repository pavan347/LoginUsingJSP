package com.database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CheckEmail {
	public boolean checkEmail(String email) {
		try {
			String query = "select email from login where email = ?";
			PreparedStatement pst = GetConnection.getConnection().prepareStatement(query);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return false;
	}
}
