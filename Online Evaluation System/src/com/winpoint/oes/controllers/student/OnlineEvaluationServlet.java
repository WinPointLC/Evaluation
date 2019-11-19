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
import com.winpoint.oes.beans.CourseType;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.dao.Dummy;
import com.winpoint.oes.helpers.common.CourseTypeHelper;
import com.winpoint.oes.helpers.common.LoginHelper;
import com.winpoint.oes.helpers.common.StreamHelper;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/OnlineEvaluationServlet")
public class OnlineEvaluationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public OnlineEvaluationServlet() {
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
		
		System.out.println("From OnlineEvaluationServlet");
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
	    String json = "";
	    if(br != null){
	    	json = br.readLine();
	    }
	    System.out.println(json);
		Gson gson = new Gson();
		/*UserProfile userProfile = gson.fromJson(json, UserProfile.class);
		
		String email = userProfile.getEmail();
		String password = userProfile.getPassword();
		System.out.println("email = " + email + "   password = " + password);
		*/
		String isReg = request.getParameter("isReg");
		String json1 = null;
		List<Stream> streamList = new StreamHelper().getStreamList();
		/*List<Stream> streamList = new ArrayList<Stream>();
		streamList.add(new Stream(1, "ABC"));
		streamList.add(new Stream(2, "LMN"));
		streamList.add(new Stream(3, "XYZ"));*/
		System.out.println(streamList.get(0).getStreamName());
		List<CourseType> courseTypeList = new CourseTypeHelper().getCourseTypeList(streamList.get(0).getStreamId());
		/*List<CourseType> courseTypeList = new ArrayList<CourseType>();
		courseTypeList.add(new CourseType(1, "mod"));
		courseTypeList.add(new CourseType(2, "tbc"));
		courseTypeList.add(new CourseType(3, "crt"));*/
		
		if(streamList != null && courseTypeList != null) {
		   PrintWriter writer = response.getWriter();
		   if(Integer.parseInt(isReg) == 1)
			   json1 = gson.toJson("{ 'success': 'true', 'location': '/OnlineEvaluationSystem/jsp/CourseRegistration.jsp'}");
		   else
		       json1 = gson.toJson("{ 'success': 'true', 'location': '/OnlineEvaluationSystem/jsp/MainCoursePage.jsp'}");
		   String json2 = gson.toJson(streamList);
		   String json3 = gson.toJson(courseTypeList);
		   /* Start- Code for ArrayList from servlet */
		   /*ArrayList<Object> obj_arr = new ArrayList<Object>();
		    obj_arr.add(streamList);
		    obj_arr.add(courseTypeList);
		    //Gson gson = new Gson();
		    String tmp = gson.toJson(obj_arr);
		    String jsonString = "[" + json1 + "," + tmp  + "]";
			System.out.println("Json string is " + jsonString);
			writer.println(jsonString);
			writer.flush();*/
			/* End- Code for ArrayList from servlet */
		   
		   String jsonString = "[" + json1 + "," + json2 + "," + json3 + "]";
		   System.out.println("Json string is " + jsonString);
		   writer.println(jsonString);
		   writer.flush();
		   
		   
		}
	}
}
