package com.va.week3.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// code comes here
		response.setContentType("text/html");
		
		
		PrintWriter out =response.getWriter();
		
		//fetch values from the user form
		String usr =request.getParameter("userName");
		String pass=request.getParameter("pass");
		String min=request.getParameter("min");
	    String max=request.getParameter("max");
	    String grade =request.getParameter("grade");
		
		
		
		//password is class123
		if(pass.equals("class123")) {
			out.print("username /password does not match"+usr);
			 RequestDispatcher rd = request.getRequestDispatcher("/NewFile.jsp");
			  rd.forward(request,response);
			 
		}
		else
		{
			out.print("username /password does not match");
			RequestDispatcher rd = request.getRequestDispatcher("/WelcomeServer");
			rd.include(request, response);
		}
		
		
		
		
		
	}

}
