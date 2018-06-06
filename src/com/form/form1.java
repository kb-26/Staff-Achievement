package com.form;
import com.baseData.*;
import com.fileNameHandler.*;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.form1db.*;

/**
 * Servlet implementation class form1
 */

@WebServlet("/form1")
public class form1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//ServletOutputStream out = response.getOutputStream();
		String firstName[] = request.getParameterValues("firstName");
	    String ProjectName = request.getParameter("ProjectName");
	    String Proposalsub = request.getParameter("Proposalsubmission");
	    String budget = request.getParameter("BudgetName");
	    String status = request.getParameter("proposalstatus");  
	    
	    response.sendRedirect("welcome.jsp");
	    
<<<<<<< HEAD
	   // form1db f1db=new form1db(firstName,ProjectName,Proposalsub,budget,status);
	   // f1db.insert();
=======
	    if(firstName.equals("")) firstName=null;
	    if(ProjectName.equals("")) ProjectName=null;
	    if(Proposalsub.equals("")) Proposalsub=null;
	    if(budget.equals("")) budget=null;
	    if(status.equals("")) status=null;
	    
	    form1db f1db=new form1db(ProjectName,Proposalsub,budget,status);
	    f1db.insert();
>>>>>>> 2c5cc15df91ae5e942e7d2652f9e9934decd26d5
	    
	    Main fH1=new Main(ProjectName);
	    String abbreviation;
	    
	    if(ProjectName!=null) {
	    	abbreviation=fH1.convert();
	    	System.out.println(abbreviation);
	    }
	    
	    
	}

}


