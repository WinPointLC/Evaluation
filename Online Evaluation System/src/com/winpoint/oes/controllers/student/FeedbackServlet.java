package com.winpoint.oes.controllers.student;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.winpoint.oes.beans.Course;
import com.winpoint.oes.beans.CourseType;
import com.winpoint.oes.beans.FeedbackQuestions;
import com.winpoint.oes.beans.QuestionBank;
import com.winpoint.oes.beans.Result;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.beans.Test;
import com.winpoint.oes.beans.TestFeedback;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.helpers.common.CourseHelper;
import com.winpoint.oes.helpers.common.LoginHelper;
import com.winpoint.oes.helpers.common.StreamHelper;
import com.winpoint.oes.helpers.common.TestFeedbackHelper;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackServlet() {
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
		System.out.println("From FeedbackServlet");
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
	    String json = "";
	    if(br != null){
	    	json = br.readLine();
	    }
	   
	    Gson gson = new Gson();
	        
	    String feedbackResListStr = json.substring(0, json.indexOf(']')+1);
	    	    
	    List<TestFeedback> testFeedbackList =  new ArrayList<TestFeedback>();
	    JsonParser parser = new JsonParser();
        JsonArray array = parser.parse(feedbackResListStr).getAsJsonArray();
        for(final JsonElement jsonElement: array){
        	TestFeedback testFeedback = gson.fromJson(jsonElement, TestFeedback.class);
            testFeedbackList.add(testFeedback);
        }
	    
        String resultJsonStr = json.substring(json.indexOf(']')+1, json.length());
        Result result = gson.fromJson(resultJsonStr, Result.class);
        int courseId = result.getCourseId();
        System.out.println("resultJsonStr courseId = " + result.getCourseId());
        
        HttpSession session = request.getSession(false);
        int userId = (Integer) session.getAttribute("userId");
	    String firstName = (String) session.getAttribute("firstName");
	    String lastName = (String) session.getAttribute("lastName");
	    
	    String userName = firstName + " " + lastName;
	    System.out.println("From FB Servlet UserId = " + userId);
	    
	    new TestFeedbackHelper().insertTestFeedback(userId, courseId, testFeedbackList);
	    String json1 = gson.toJson("{ 'success': 'true', 'location': '/OnlineEvaluationSystem/jsp/Result.jsp', 'firstName': '" + firstName + "', 'lastName': '" + lastName + "'}");
	    String jsonString = "[" + json1 + "]";
	    PrintWriter writer = response.getWriter();
		   writer.println(jsonString);
		   writer.flush();
	}
}
