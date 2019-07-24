package com.winpoint.oes.controllers.student;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.dao.Dummy;
import com.winpoint.oes.helpers.common.LoginHelper;
import com.winpoint.oes.helpers.common.StreamHelper;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/OnlineEvaluationServlet")
public class OnlineEvaluationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public OnlineEvaluationServlet() {
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
		
		System.out.println("From OnlineEvaluationServlet");
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
	    String json = "";
	    if(br != null){
	    	json = br.readLine();
	    }
	    System.out.println(json);
		Gson gson = new Gson();
		UserProfile userProfile = gson.fromJson(json, UserProfile.class);
		
		String email = userProfile.getEmail();
		String password = userProfile.getPassword();
		System.out.println("email = " + email + "   password = " + password);
		
		String json1 = null;
		//UserProfile userProfileRecd =  new UserProfile();//new LoginHelper().validateLogin(email, password);
		List<Stream> streamList = new StreamHelper().getStreamList();
		if(streamList != null) {
		   PrintWriter writer = response.getWriter();
		   json1 = gson.toJson("{ 'success': 'true', 'location': '/OnlineEvaluationSystem/jsp/MainCoursePage-Anjali.jsp'}");
		   String json2 = gson.toJson(streamList);
		   String jsonString = "[" + json1 + "," + json2 + "]";
		   System.out.println("Json string is " + jsonString);
		   writer.println(jsonString);
		   writer.flush();
		}
	}
}
