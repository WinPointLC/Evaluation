package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.winpoint.oes.beans.StudentCourseFeesBean;
import com.winpoint.oes.util.sql.ConnectionManager;

public class FeeDetailsDao {
	public ArrayList<StudentCourseFeesBean> getFeeDetails() {
		ArrayList<StudentCourseFeesBean> studentCourseFeesList = new ArrayList();
		
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			
			String query = "select s.USER_ID, FIRST_NAME, LAST_NAME, c.COURSE_ID, COURSE_NAME, FEE_STATUS, FEES\r\n" + 
					"from STUDENT_COURSE_DETAILS s\r\n" + 
					"join USER_PROFILE u\r\n" + 
					"on s.USER_ID = u.USER_ID\r\n" + 
					"join COURSES c \r\n" + 
					"on s.COURSE_ID = c.COURSE_ID\r\n" + 
					"where FEE_STATUS is null \r\n" + 
					"";
			
			ResultSet rs = statement.executeQuery(query);
			while(rs.next()) {
				studentCourseFeesList.add(new StudentCourseFeesBean(rs.getInt("USER_ID"), rs.getString("FIRST_NAME"), rs.getString("LAST_NAME"), rs.getInt("COURSE_ID"), rs.getString("COURSE_NAME"), rs.getString("FEE_STATUS"), rs.getInt("FEES")));
			}
		} 
		catch (SQLException e) {
			studentCourseFeesList = null;
			e.printStackTrace();
		}
		
		return studentCourseFeesList;
	}
}
