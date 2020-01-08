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
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.winpoint.oes.beans.Course;
import com.winpoint.oes.beans.CourseType;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.beans.StudentCourseDetails;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.dao.UserTestDetailsDao;
import com.winpoint.oes.helpers.common.CourseTypeHelper;
import com.winpoint.oes.helpers.common.LoginHelper;
import com.winpoint.oes.helpers.common.StreamHelper;
import com.winpoint.oes.helpers.common.StudentCourseDetailsHelper;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/CourseRegistrationServlet")
public class CourseRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CourseRegistrationServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("From CourseRegistrationServlet");
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
	    String json = "";
	    if(br != null){
	    	json = br.readLine();
	    }
	    
		Gson gson = new Gson();
		Course course = gson.fromJson(json, Course.class);
		
		int courseId = course.getCourseId();
		String courseName = course.getCourseName();
		int streamId = course.getStreamId();
		int courseTypeId = course.getCourseTypeId();
		HttpSession session = request.getSession(false);
		int userId = (int) session.getAttribute("userId");
		
		String feeStatus = request.getParameter("feeStatus");
		
		new StudentCourseDetailsHelper().createStudentCourseDetails(userId, courseId, courseName, streamId, courseTypeId, feeStatus);
		new UserTestDetailsDao().createUserTestDetails(userId, courseId);
		ArrayList <StudentCourseDetails>studentCourseDetailsList =  new StudentCourseDetailsHelper().getStudentCourseDetailsList(userId);
		ArrayList <StudentCourseDetails>studentGACourseDetailsList =  new StudentCourseDetailsHelper().getStudentGACourseDetailsList(userId);
		
		String json1 = gson.toJson("{ 'success': 'true', 'location': '/OnlineEvaluationSystem/jsp/CourseRegistration.jsp'}");
		String json2 = gson.toJson(studentCourseDetailsList);
		String json3 = gson.toJson(studentGACourseDetailsList);
		
		PrintWriter writer = response.getWriter();
				
		String jsonString = "[" + json1 + "," + json2 + "," + json3 + "]";
		writer.println(jsonString);
		writer.flush();		   
	}
}
