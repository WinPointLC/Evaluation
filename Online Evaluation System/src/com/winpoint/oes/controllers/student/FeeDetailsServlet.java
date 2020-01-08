package com.winpoint.oes.controllers.student;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.AsyncContext;
import javax.servlet.DispatcherType;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpUpgradeHandler;
import javax.servlet.http.Part;

import com.google.gson.Gson;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.beans.StudentCourseFeesBean;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.helpers.common.FeeDetailsHelper;
import com.winpoint.oes.helpers.common.LoginHelper;
import com.winpoint.oes.helpers.common.StreamHelper;
import com.winpoint.oes.helpers.common.StudentCourseDetailsHelper;

/**
 * Servlet implementation class FeeDetailsServlet
 */
@WebServlet("/FeeDetailsServlet")
public class FeeDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeeDetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<StudentCourseFeesBean> unpaidStudentsList = new FeeDetailsHelper().getFeeDetails();
		request.setAttribute("unpaidStudentsList", unpaidStudentsList);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		System.out.println("From FeeDetailsServlet");
		
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
	    String json = "";
	    if(br != null){
	    	json = br.readLine();
	    }

		Gson gson = new Gson();
		StudentCourseFeesBean studentCourseFeesBean = gson.fromJson(json, StudentCourseFeesBean.class);
		if(studentCourseFeesBean != null) {
			int userId = studentCourseFeesBean.getUserId();
			int courseId = studentCourseFeesBean.getCourseId();
			
			StudentCourseDetailsHelper studentCourseDetailsHelper = new StudentCourseDetailsHelper();
			studentCourseDetailsHelper.updateStudentCourseDetails(userId, courseId);
			
			String json1 = null;
			json1 = gson.toJson("{ 'success': 'true'}");
			
			String jsonString = "[" + json1 + "]";
			PrintWriter writer = response.getWriter();
			writer.println(jsonString);
		}

	}

}
