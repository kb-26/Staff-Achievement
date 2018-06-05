package com.form;
import com.form1.*;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.form1.form1db;

/**
 * Servlet implementation class form1
 */

@WebServlet("/form1")
public class form1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//ServletOutputStream out = response.getOutputStream();
		String firstName = request.getParameter("firstName");
	    String ProjectName = request.getParameter("ProjectName");
	    String Proposalsub = request.getParameter("Proposalsubmission");
	    String budget = request.getParameter("BudgetName");
	    String status = request.getParameter("proposalstatus");  
	    
	    response.sendRedirect("welcome.jsp");
	    
	    form1db f1db=new form1db(firstName,ProjectName,Proposalsub,budget,status);
	    f1db.insert();
	    
	}

}


