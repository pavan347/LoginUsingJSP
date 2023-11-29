package com.database;

public interface UserDAO {
	
	boolean checkLogin(String email,String password);
	
	boolean createUser(String name,String email,String password);
	
}
