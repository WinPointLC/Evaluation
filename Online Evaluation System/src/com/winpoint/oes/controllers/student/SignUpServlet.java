package com.winpoint.oes.controllers.student;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale.Category;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.winpoint.oes.beans.SecurityQuestions;
import com.winpoint.oes.beans.UserCategory;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.helpers.common.LoginHelper;
import com.winpoint.oes.helpers.common.SecurityQuestionsHelper;
import com.winpoint.oes.helpers.common.UserCategoryHelper;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<SecurityQuestions> securityQuestions = new SecurityQuestionsHelper().getSecurityQuestionsList();
		request.setAttribute("securityQuestionsList", securityQuestions);
		
		List<UserCategory> userCategoryList = new UserCategoryHelper().getUserCategoryList();
		request.setAttribute("userCategoryList", userCategoryList);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("From SignUpServlet");
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
	    String json = "";
	    if(br != null){
	    	json = br.readLine();
	    }
	    
		Gson gson = new Gson();
		UserProfile userProfile = gson.fromJson(json, UserProfile.class);
		if(userProfile != null) {
			String firstName = userProfile.getFirstName();
			String lastName = userProfile.getLastName();
			String email = userProfile.getEmail();
			String password = userProfile.getPassword();
			String gender = userProfile.getGender();
			String mobileNumber = userProfile.getMobileNumber();
		
			UserProfile userProfileRecd =  new LoginHelper().createLogin(userProfile);
			
			if(userProfileRecd != null) {
				HttpSession session = request.getSession(true);
				session.setAttribute("userId", userProfileRecd.getUserId());
				session.setAttribute("firstName", userProfileRecd.getFirstName());
				session.setAttribute("lastName", userProfileRecd.getLastName());
				String json1 = null;
				int userCategoryId;
			
				PrintWriter writer = response.getWriter();
				userCategoryId =  userProfileRecd.getUserCategoryId();
				if (userCategoryId == 1)
				   json1 = gson.toJson("{ 'success': 'true', 'location': '/OnlineEvaluationSystem/jsp/ClientDashboard.jsp'}");
				else if(userCategoryId == 2) {
					json1 = gson.toJson("{ 'success': 'true', 'location': '/OnlineEvaluationSystem/jsp/EmployeeDashboard.jsp'}");
				}
				String json2 = gson.toJson(userProfileRecd);
				String jsonString = "[" + json1 + "," + json2 + "]";
				writer.println(jsonString);
				writer.flush();
			}
		}
	}

}
