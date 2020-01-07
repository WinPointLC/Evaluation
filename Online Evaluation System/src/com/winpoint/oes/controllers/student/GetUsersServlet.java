package com.winpoint.oes.controllers.student;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.winpoint.oes.beans.Course;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.helpers.common.CourseHelper;
import com.winpoint.oes.helpers.common.UserProfileHelper;

/**
 * Servlet implementation class GetUsersServlet
 */
@WebServlet("/GetUsersServlet")
public class GetUsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetUsersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<UserProfile> allUsersList = new UserProfileHelper().getUsers();
		request.setAttribute("allUsersList", allUsersList);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("From GetUsersServlet");
		
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
	    String json = "";
	    if(br != null){
	    	json = br.readLine();
	    }
	   
		Gson gson = new Gson();
		UserProfile userProfile = gson.fromJson(json, UserProfile.class);
		int userId =  userProfile.getUserId();
		
//		List<Course> courseList = new CourseHelper().getCourseList(streamId, courseTypeId);
		String coursesString = new UserProfileHelper().getCoursesList(userId);
		String json1 = null;
		json1 = gson.toJson("{ 'success': 'true', 'coursesString': '" + coursesString + "'}");
		
		String jsonString = "[" + json1  + "]";
		System.out.println("Json string is " + jsonString);
		PrintWriter writer = response.getWriter();
		writer.println(jsonString);
		writer.flush();
	}

}
