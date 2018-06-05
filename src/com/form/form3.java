package com.form;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class form3
 */
@WebServlet("/form3")
public class form3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
	    String work = request.getParameter("work");
	    String faculty = request.getParameter("faculty");
	    String agency = request.getParameter("agency");
	    double amount = Double.parseDouble(request.getParameter("amount"));
	    
	    response.sendRedirect("welcome.jsp");
	}

}
