package com.form1db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class staffID {
	String Staff_Name;
	
	public staffID(String Staff_Name) {
		this.Staff_Name = Staff_Name;
	}
	
	int getID() {
		int ID=0;
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/StaffAchievement","root","topsecret123");  
			
			String query = "select * from table where Staff_Name=";
			
			
			
			Statement statement = con.createStatement();
			ResultSet rSet=statement.executeQuery(query);
			
			
			con.close();  
			}catch(Exception e){ System.out.println(e);}
		
		return ID;

	}
	
}
