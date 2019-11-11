package com.winpoint.oes.controllers.student;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.winpoint.oes.beans.StudentCourseDetails;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.dao.Dummy;
import com.winpoint.oes.helpers.common.LoginHelper;
import com.winpoint.oes.helpers.common.StudentCourseDetailsHelper;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/ClientDashboardServlet")
public class ClientDashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClientDashboardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("From Get of ClientDashboardServlet");
		ArrayList <StudentCourseDetails>studentCourseDetailsList =  new StudentCourseDetailsHelper().getStudentCourseDetailsList(1);
		Iterator<StudentCourseDetails> studcourseIt = studentCourseDetailsList.iterator();
		while(studcourseIt.hasNext()) {
			StudentCourseDetails studDet = studcourseIt.next();
			System.out.println(studDet.getCourseAggr());
		}
		Gson gson = new Gson();
		String studentCourseDetailsListJSON = gson.toJson(studentCourseDetailsList);
		System.out.println(studentCourseDetailsListJSON);
		request.setAttribute("studentCourseDetailsList", studentCourseDetailsListJSON);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	/*	BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
	    String json = "";
	    if(br != null){
	    	json = br.readLine();
	    }
	    System.out.println(json);
		Gson gson = new Gson();
		StudentCourseDetails studentCourseDetails = gson.fromJson(json, StudentCourseDetails.class);
		if(studentCourseDetails != null) {
		int userId = studentCourseDetails.getUserId();
				
		ArrayList <StudentCourseDetails>studentCourseDetailsList =  new StudentCourseDetailsHelper().getStudentCourseDetailsList(userId);
		
		if(studentCourseDetailsList != null) {
			
			PrintWriter writer = response.getWriter();
			
			String json1 = gson.toJson("{ 'success': 'true', 'location': '/OnlineEvaluationSystem/jsp/ClientDashboard.jsp'}");
			String json2 = gson.toJson(studentCourseDetailsList);
			String jsonString = "[" + json1 + "," + json2 + "]";
			System.out.println("Json string is " + jsonString);
			writer.println(jsonString);
			writer.flush();
		}
		}
*/	}

}
