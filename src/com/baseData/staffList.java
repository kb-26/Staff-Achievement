package com.baseData;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class staffList {
	int Staff_ID;
	String Staff_Name = null;
	
	public staffList(String Staff_Name) {
		this.Staff_Name = Staff_Name;
	}
	
	public void insert() {
	try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/StaffAchievement","root","topsecret123");  
		
		String query = "insert into staff (Staff_Name) values (?)";
		
		PreparedStatement ps1=con.prepareStatement(query);
		ps1.setString(1, Staff_Name);
		
		ps1.executeUpdate();
		
		con.close();  
		}catch(Exception e){ System.out.println(e);}  
	}
}
