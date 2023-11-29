package com.database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAOImplementation implements UserDAO {
	
	public boolean checkLogin(String email,String password) {
		
		try {
			String query = "select * from login where email = ? and password = ?";
			PreparedStatement pst = GetConnection.getConnection().prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2,password);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return false;
		
	}
	
	public String getName(String email) {
		try {
			String query = "select name from login where email = ?";
			PreparedStatement pst = GetConnection.getConnection().prepareStatement(query);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				return rs.getString("name"); 
			}
		}catch(Exception e) {
			System.out.println(e );
		}
		return null;
	}
	
	public boolean createUser(String name,String email,String password) {
		
		try {
			String query = "insert into login(name,email,password) values(?,?,?)";
			PreparedStatement pst = GetConnection.getConnection().prepareStatement(query);
			pst.setString(1,name);
			pst.setString(2,email);
			pst.setString(3, password);
			return pst.executeUpdate() > 0;
			
			 
		}catch(Exception e) {
			System.out.println(e);
			return false;
		}
	}
	
}
