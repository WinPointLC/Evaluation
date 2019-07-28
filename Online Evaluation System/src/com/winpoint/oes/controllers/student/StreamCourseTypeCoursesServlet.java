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
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.dao.Dummy;
import com.winpoint.oes.helpers.common.CourseHelper;
import com.winpoint.oes.helpers.common.LoginHelper;
import com.winpoint.oes.helpers.common.StreamHelper;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/StreamCourseTypeCoursesServlet")
public class StreamCourseTypeCoursesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public StreamCourseTypeCoursesServlet() {
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
		
		System.out.println("From StreamCourseTypeCoursesServlet");
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
	    String json = "";
	    if(br != null){
	    	json = br.readLine();
	    }
	    System.out.println(json);
	   
		Gson gson = new Gson();
		Course course = gson.fromJson(json, Course.class);
		int streamId =  course.getStreamId();
		int courseTypeId =  course.getCourseTypeId();
		System.out.println("StreamId = " + course.getStreamId() + "CourseTypeId = " + course.getCourseTypeId());
		List<Course> courseList = new CourseHelper().getCourseList(streamId, courseTypeId);
		/*List<Course> courseList = new ArrayList<Course>();
		courseList.add(new Course(1, "JS1", streamId, courseTypeId, "/OnlineEvaluationSystem/assets/img/Dashboard-main-page-images/java-brands.svg"));
		courseList.add(new Course(2, "OS1", streamId, courseTypeId, "/OnlineEvaluationSystem/assets/img/Dashboard-main-page-images/java-brands.svg"));
		courseList.add(new Course(3, "JAVA 8 1", streamId, courseTypeId, "/OnlineEvaluationSystem/assets/img/Dashboard-main-page-images/java-brands.svg"));
		courseList.add(new Course(1, "JS2", streamId, courseTypeId, "/OnlineEvaluationSystem/assets/img/Dashboard-main-page-images/java-brands.svg"));
		courseList.add(new Course(2, "OS2", streamId, courseTypeId, "/OnlineEvaluationSystem/assets/img/Dashboard-main-page-images/java-brands.svg"));
		courseList.add(new Course(3, "JAVA 8 2", streamId, courseTypeId, "/OnlineEvaluationSystem/assets/img/Dashboard-main-page-images/java-brands.svg"));
		courseList.add(new Course(1, "JS3", streamId, courseTypeId, "/OnlineEvaluationSystem/assets/img/Dashboard-main-page-images/java-brands.svg"));
		courseList.add(new Course(2, "OS3", streamId, courseTypeId, "/OnlineEvaluationSystem/assets/img/Dashboard-main-page-images/java-brands.svg"));
		courseList.add(new Course(3, "JAVA 8 3", streamId, courseTypeId, "/OnlineEvaluationSystem/assets/img/Dashboard-main-page-images/java-brands.svg"));*/
				
		if(courseList != null) {
			String json1 = null;
		   json1 = gson.toJson("{ 'success': 'true', 'location': '/OnlineEvaluationSystem/jsp/MainCoursePage.jsp'}");
		   String json2 = gson.toJson(courseList);
		  		   
		   String jsonString = "[" + json2  + "]";
		   System.out.println("Json string is " + jsonString);
		   PrintWriter writer = response.getWriter();
		   writer.println(jsonString);
		   writer.flush();
		   
		   
		}
	}
}
