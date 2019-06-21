package com.winpoint.oes.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.winpoint.oes.beans.UserStudent;
import com.winpoint.oes.helpers.student.LoginHelper;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //boolean flag = false;
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String email = request.getParameter("email");
		String password = request.getParameter("Password");
		
		System.out.println("Email: "+email);
		System.out.println("Password: "+password);
		
		//flag = new LoginHelper().validateLogin(email,password);
		boolean flag;
		LoginHelper loginHelper = new LoginHelper();
		flag = loginHelper.validateLogin("san","123");
		if(flag==true) {
			System.out.println("login successful");
		}
		else {
			System.out.println("user not found");
		}
		/*if(flag==true) {
			System.out.println("login successful");
		}
		
		else {
			System.out.println("user not found");
		}*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("IN servlet"+ "");
		doGet(request, response);
	}

}
