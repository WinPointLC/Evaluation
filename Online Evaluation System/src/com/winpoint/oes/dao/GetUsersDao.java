package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.StringTokenizer;

import com.winpoint.oes.beans.StudentCourseFeesBean;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.util.sql.ConnectionManager;

public class GetUsersDao {
	public void getUsers() {
		
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			
			String query1 = "select USER_ID, FIRST_NAME, EMAIL_ID, LAST_NAME, COLLEGE, MOBILE_NUMBER\r\n" + 
					"from USER_PROFILE";
			
			String query2 = "select COURSE_NAME\r\n" + 
					"from STUDENT_COURSE_DETAILS join COURSES on COURSES.COURSE_ID = STUDENT_COURSE_DETAILS.COURSE_ID\r\n" + 
					"where USER_ID = ";
			
			ResultSet rs = statement.executeQuery(query1);
			Hashtable<Integer, UserProfile> userIdHashTable = new Hashtable<Integer, UserProfile>();
			while(rs.next()) {
				userIdHashTable.put(rs.getInt("USER_ID"), new UserProfile(rs.getInt("USER_ID"), rs.getString("FIRST_NAME"), rs.getString("LAST_NAME"), rs.getString("EMAIL_ID"), rs.getString("MOBILE_NUMBER"), rs.getString("COLLEGE")));
			}
			
			Enumeration<Integer> keys = userIdHashTable.keys();
			while(keys.hasMoreElements()) {
				int i = keys.nextElement();
				
				ResultSet rs1 = statement.executeQuery(query2 + i);
				
				StringBuilder coursesString = new StringBuilder("");
				while(rs1.next()) {
					coursesString.append(rs1.getString("COURSE_NAME") + ", ");	
				}
				
				if(coursesString.toString().equals("")) {
					System.out.println("None");
				}
				else {
					coursesString.replace(coursesString.length() - 2, coursesString.length(), " ");
					System.out.println(coursesString);
				}
				
				UserProfile profile = userIdHashTable.get(i);
				profile.setAddress(coursesString.toString());
				
				userIdHashTable.put(i, profile);
			}
			
			System.out.println("\nAfter everything trying to access address (coursesString) from userprofile\n\n");
			UserProfile profile = userIdHashTable.get(1);
			System.out.println(profile.getAddress());
			
//			for(Integer i : keys) {
//				ResultSet rs1 = statement.executeQuery(query2 + i);
//				
//				String coursesString = "";
//				StringBuilder coursesString1 = new StringBuilder("");
//				while(rs1.next()) {
//					coursesString1.append(rs1.getString("COURSE_NAME") + ", ");
//					
//				}
//				if(coursesString1.toString().equals("")) {
//					System.out.println("None");
//				}
//				else {
//					coursesString1.replace(coursesString1.length() - 2, coursesString1.length(), " ");
//					System.out.println(coursesString1);
//				}
//			}
		} 
		catch (SQLException e) {
			//studentCourseFeesList = null;
			e.printStackTrace();
		}
		
		//return studentCourseFeesList;
	}
}
