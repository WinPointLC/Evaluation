package com.winpoint.oes.controllers.student;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.winpoint.oes.beans.Course;
import com.winpoint.oes.beans.CourseType;
import com.winpoint.oes.beans.QuestionBank;
import com.winpoint.oes.beans.Rules;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.beans.Test;
import com.winpoint.oes.beans.TestDetails;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.helpers.common.CourseHelper;
import com.winpoint.oes.helpers.common.LoginHelper;
import com.winpoint.oes.helpers.common.QuestionBankHelper;
import com.winpoint.oes.helpers.common.RulesHelper;
import com.winpoint.oes.helpers.common.StreamHelper;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/RulesServlet")
public class RulesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public RulesServlet() {
        super();
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
		System.out.println("From RulesServlet");
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
	    String json = "";
	    if(br != null){
	    	json = br.readLine();
	    }

	   	Gson gson = new Gson();
	   	TestDetails testDetails = gson.fromJson(json, TestDetails.class);
		int testDetailId =  testDetails.getTestDetailId();

		int userId = 0;
		List<Rules> rulesList = new RulesHelper().getRulesList(testDetailId);
		
		List<QuestionBank> questionsList = new QuestionBankHelper().getQuestionsList(testDetailId);
		System.out.println("Question List size =  " + questionsList.size());

		if(rulesList != null && questionsList != null) {
		   String json1 = gson.toJson("{ 'success': 'true', 'location': '/OnlineEvaluationSystem/jsp/RulesPage.jsp'}");
		   String json2 = gson.toJson(rulesList);
		   String json3 = gson.toJson(questionsList);
		   String json4 = gson.toJson(testDetails);		
		   
		   String jsonString = "[" + json1  + "," + json2 + "," + json3 + "," + json4 +"]";
		   //String jsonString = "[" + json3 +"]";
		   System.out.println(jsonString);
		   PrintWriter writer = response.getWriter();
		   writer.println(jsonString);
		   writer.flush();
		}
	}
}
