package com.form;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class form2
 */
@WebServlet("/form2")
public class form2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
	    String ProjectName = request.getParameter("ProjectName");
	    String agency = request.getParameter("agency");
	    double s_amount = Double.parseDouble(request.getParameter("s_amount"));
	    double s_year = Double.parseDouble(request.getParameter("s_year"));
	    double amount = Double.parseDouble(request.getParameter("amount"));
	    String grant = request.getParameter("grant");
	    
	    response.sendRedirect("welcome.jsp");
	}

	

}
