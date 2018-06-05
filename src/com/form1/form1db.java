package com.form1;
import java.sql.*;

public class form1db {
	String firstName, projectName, proposalSubmittedTo, status, budget;
	
	public form1db(String firstName, String projectName, String proposalSubmittedTo, String budget, String status) {
		this.budget=budget;
		this.firstName=firstName;
		this.projectName=projectName;
		this.proposalSubmittedTo=proposalSubmittedTo;
		this.status=status;
		
	}
	
	public void insert() {
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/StaffAchievement","root","topsecret123");  
			
			String query="insert into Project_List (Staff_Name,Project_Name,Project_Incharge,Proposal_Submitted_To,Budget_Amount,Proposal_Status) values (?,?,?,?,?,?)";
			
			PreparedStatement ps1=con.prepareStatement(query);	
			ps1.setString(1, firstName);
			ps1.setString(2, projectName);
			ps1.setString(3, firstName);
			ps1.setString(4, proposalSubmittedTo);
			ps1.setString(5, budget);
			ps1.setString(6, status);
			
			int rowsEdited = ps1.executeUpdate();
			
			con.close();  
			}catch(Exception e){ System.out.println(e);}  

	}

}
