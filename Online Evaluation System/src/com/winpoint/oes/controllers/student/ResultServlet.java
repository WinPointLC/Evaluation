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
import com.winpoint.oes.beans.QuestionBank;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.beans.Test;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.dao.Dummy;
import com.winpoint.oes.helpers.common.CourseHelper;
import com.winpoint.oes.helpers.common.LoginHelper;
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
		
		System.out.println("From ResultServlet");
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
	    String json = "";
	    if(br != null){
	    	json = br.readLine();
	    }
	    System.out.println(json.length());
	    String answerListStr = json.substring(0, json.indexOf(']')+1);
	    String questionsListStr = json.substring(json.indexOf(']')+1, json.length());
	    System.out.println(answerListStr);
	    System.out.println(questionsListStr);
	    Gson gson = new Gson();
	    ArrayList<Integer> answersList = gson.fromJson(answerListStr, ArrayList.class); 
	    Iterator answersIterator = answersList.iterator();
	    while(answersIterator.hasNext()) {
		   System.out.println(((Double)answersIterator.next()).intValue());
	    }
	   
	    List<QuestionBank> lst =  new ArrayList<QuestionBank>();
	    JsonParser parser = new JsonParser();
        JsonArray array = parser.parse(questionsListStr).getAsJsonArray();
        for(final JsonElement jsonElement: array){
           QuestionBank question = gson.fromJson(jsonElement, QuestionBank.class);
           System.out.println("Question = " + question.getQuestion() + " correctOption = " + question.getCorrectOption());
           lst.add(question);
        }
	     
	    String json1 = gson.toJson("{ 'success': 'true', 'location': '/OnlineEvaluationSystem/jsp/FeedBackForm.jsp'}");
		/*Gson gson = new Gson();
		Course course = gson.fromJson(json, Course.class);
		int streamId =  course.getStreamId();
		int courseTypeId =  course.getCourseTypeId();
		int courseId = course.getCourseId();
		String courseName = course.getCourseName();
		System.out.println("StreamId = " + course.getStreamId() + "CourseTypeId = " + course.getCourseTypeId()  + "CourseId = " + course.getCourseId());
		HttpSession session = request.getSession(false);
		int userId = (int) session.getAttribute("userId");
		session.setAttribute("courseName", courseName);
		List<Test> testsList = new CourseHelper().getTestsList(userId, streamId, courseTypeId, courseId);
		*/
		/*List<Test> testsList = new ArrayList<Test>();
		testsList.add(new Test(1, "C", "Objective", 1, 1000, true, 43));
		testsList.add(new Test(2, "C", "Coding", 1, 2000, true, 0));
		testsList.add(new Test(3, "C", "Descriptive", 1, 3000, false, 0));*/
				
		/*if(testsList != null) {
		  
		   String json1 = gson.toJson("{ 'success': 'true', 'location': '/OnlineEvaluationSystem/jsp/TestSelectPage.jsp'}");
		   String json2 = gson.toJson(testsList);
		  		   
		   String jsonString = "[" + json1  + "," + json2 + "]";
		   System.out.println("Json string is " + jsonString);
		   PrintWriter writer = response.getWriter();
		   writer.println(jsonString);
		   writer.flush();
		   
		   
		}*/
	    String jsonString = "[" + json1 + "]";
	    PrintWriter writer = response.getWriter();
		   writer.println(jsonString);
		   writer.flush();
	}
}
