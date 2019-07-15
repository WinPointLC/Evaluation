package com.winpoint.oes.controllers.frontend;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
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
	private HttpSession session;
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommonController() {
        super();
    }

    /**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		System.out.println("success");
		RequestDispatcher rd = request.getRequestDispatcher("/LoginServ");
		rd.forward(request, response);
		//session =  request.getSession();

		//getServletContext().getRequestDispatcher("/test").forward(request, response);

		session = request.getSession();

		getServletContext().getRequestDispatcher("/LoginServlet").forward(request, response);

		//session.setAttribute("name", "sanika");
		//System.out.println(session.getAttribute("name"));
	}


}
