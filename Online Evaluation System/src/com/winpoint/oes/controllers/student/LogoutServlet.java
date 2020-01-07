package com.winpoint.oes.controllers.student;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LogoutServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("From LogoutServlet");
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		Gson gson = new Gson();
		String json1 = null;
		String jsonString = null;
		json1 = gson.toJson("{ 'success': 'true', 'location': '/OnlineEvaluationSystem/jsp/LoginForm.jsp'}");
		jsonString = "[" + json1 + "]";
		
		PrintWriter writer = response.getWriter();
		writer.println(jsonString);
		writer.flush();
	}
}
