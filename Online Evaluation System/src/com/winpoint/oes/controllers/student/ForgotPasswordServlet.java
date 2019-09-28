package com.winpoint.oes.controllers.student;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.dao.Dummy;
import com.winpoint.oes.helpers.common.LoginHelper;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/ForgotPasswordServlet")
public class ForgotPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPasswordServlet() {
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
		
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
	    String json = "";
	    if(br != null){
	    	json = br.readLine();
	    }
	    System.out.println(json);
		Gson gson = new Gson();
		UserProfile userProfile = gson.fromJson(json, UserProfile.class);
		if(userProfile != null) {
		String email = userProfile.getEmail();
		System.out.println("email = " + email);
		
		UserProfile userProfileRecd =  new LoginHelper().getSecurityQuesAns(email);
		
		if(userProfileRecd != null) {
			HttpSession session = request.getSession();
			session.setAttribute("userId", userProfileRecd.getUserId());
			session.setAttribute("firstName", userProfileRecd.getFirstName());
			session.setAttribute("lastName", userProfileRecd.getLastName());
			String json1 = null;
					
			PrintWriter writer = response.getWriter();
			json1 = gson.toJson("{ 'success': 'true', 'location': '/OnlineEvaluationSystem/jsp/ForgotPassword.jsp'}");
			
			//String json2 = gson.toJson(new UserProfile("anjali.parkhi", "Anjali"));
			String json2 = gson.toJson(userProfileRecd);
			String jsonString = "[" + json1 + "," + json2 + "]";
			System.out.println("Json string is " + jsonString);
			writer.println(jsonString);
			writer.flush();
		}
		}
	}

}
