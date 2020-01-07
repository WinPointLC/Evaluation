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
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("From ClientDashboardServlet");
		HttpSession session = request.getSession(false);
		int userId = (int) session.getAttribute("userId");
		
		ArrayList <StudentCourseDetails>studentCourseDetailsList =  new StudentCourseDetailsHelper().getStudentCourseDetailsList(userId);
		Iterator<StudentCourseDetails> studcourseIt = studentCourseDetailsList.iterator();
		while(studcourseIt.hasNext()) {
			StudentCourseDetails studDet = studcourseIt.next();
		}
		
		Gson gson = new Gson();
		String studentCourseDetailsListJSON = gson.toJson(studentCourseDetailsList);
		
		ArrayList <StudentCourseDetails>studentGACourseDetailsList = new StudentCourseDetailsHelper().getStudentGACourseDetailsList(userId);
		Iterator<StudentCourseDetails> studGAcourseIt = studentGACourseDetailsList.iterator();
		while(studGAcourseIt.hasNext()) {
			StudentCourseDetails studDet = studGAcourseIt.next();
		}
		
		String studentGACourseDetailsListJSON = gson.toJson(studentGACourseDetailsList);
		request.setAttribute("studentCourseDetailsList", studentCourseDetailsListJSON);
		request.setAttribute("studentGACourseDetailsList", studentGACourseDetailsListJSON);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
