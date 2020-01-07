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
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.helpers.common.CourseHelper;
import com.winpoint.oes.helpers.common.FeedbackQuestionsHelper;
import com.winpoint.oes.helpers.common.LoginHelper;
import com.winpoint.oes.helpers.common.ResultHelper;
import com.winpoint.oes.helpers.common.StreamHelper;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/ResultServlet")
public class ResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResultServlet() {
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
		System.out.println("From ResultServlet");
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
	    String json = "";
	    if(br != null){
	    	json = br.readLine();
	    }

	    String answerListStr = json.substring(0, json.indexOf(']')+1);
	    String jsonSubstr1 = json.substring(json.indexOf(']')+1, json.length());
	    String questionsListStr = jsonSubstr1.substring(0, jsonSubstr1.indexOf(']')+1);
	    String jsonSubstr2 = jsonSubstr1.substring(jsonSubstr1.indexOf(']')+1, jsonSubstr1.length());
	    String isCorrectListStr = jsonSubstr2.substring(0, jsonSubstr2.indexOf(']')+1);
	    String resultStr = jsonSubstr2.substring(jsonSubstr2.indexOf(']')+1, jsonSubstr2.length());
	    
	    Gson gson = new Gson();
	    
	    Result result = gson.fromJson(resultStr, Result.class);
	    
	    List<QuestionBank> questionsList =  new ArrayList<QuestionBank>();
	    JsonParser parser = new JsonParser();
        JsonArray array = parser.parse(questionsListStr).getAsJsonArray();
        for(final JsonElement jsonElement: array){
           QuestionBank question = gson.fromJson(jsonElement, QuestionBank.class);
           questionsList.add(question);
        }
	
        Integer[] answersList = gson.fromJson(answerListStr, Integer[].class); 
	    Integer[] isCorrectList = gson.fromJson(isCorrectListStr, Integer[].class); 
	    
	    HttpSession session = request.getSession(false);
		int userId = (int) session.getAttribute("userId");
		boolean isUpdated = new ResultHelper().updateUserTestDetails(userId, questionsList, result);
		isUpdated = new ResultHelper().updateStudentTestResponses(userId, questionsList, answersList, isCorrectList, result);
	  
        String json1 = gson.toJson("{ 'success': 'true', 'location': '/OnlineEvaluationSystem/jsp/FeedBackForm.jsp'}");
        String json2 = null;
        ArrayList<FeedbackQuestions> feedbackQuestionsList = new FeedbackQuestionsHelper().getFeedbackQuestions();
        if (feedbackQuestionsList != null) {
        	json2 = gson.toJson(feedbackQuestionsList);
        }
        
        String jsonString = "[" + json1  + "," + json2 + "]";
	    PrintWriter writer = response.getWriter();
	    writer.println(jsonString);
		writer.flush();
	}
}
