package com.winpoint.oes.controllers.frontend;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.winpoint.oes.controllers.student.LoginServlet;

/**
 * Servlet implementation class CommonController
 */
@WebServlet("/CommonController")
public class CommonController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommonController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
<<<<<<< HEAD:Online Evaluation System/src/com/winpoint/oes/controllers/frontend/CommonController.java
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
=======
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
>>>>>>> 349c3f32bd7c0d8ba82412522deedcf28636cee0:Online Evaluation System/src/com/winpoint/oes/servlets/LoginServlet.java
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("IN servlet"+ "");
		doGet(request, response);
		
		LoginServlet loginServlet = new LoginServlet(request, response, request.getSession());
	}

}
