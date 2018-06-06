package com.form1db;
import java.sql.*;

public class form1db {
	String firstName=null, projectName=null;
	String proposalSubmittedTo=null, status=null, budget=null;
	
	public form1db(String projectName, String proposalSubmittedTo, String budget, String status) {
		this.budget=budget;
		this.projectName=projectName;
		this.proposalSubmittedTo=proposalSubmittedTo;
		this.status=status;
		
	}
	
	public void insert() {
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/StaffAchievement","root","topsecret123");  
			
			String query="insert into project_list (Project_Name,Proposal_Submitted_To,Budget,Proposal_Status) values (?,?,?,?)";
			
			PreparedStatement ps1=con.prepareStatement(query);	
			ps1.setString(1, projectName);
			ps1.setString(2, proposalSubmittedTo);
			ps1.setString(3, budget);
			ps1.setString(4, status);
			
			
			
			ps1.executeUpdate();
			
			con.close();  
			}catch(Exception e){ System.out.println(e);}  

	}

}
