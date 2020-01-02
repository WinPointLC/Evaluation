package com.winpoint.oes.dao;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;

import com.microsoft.sqlserver.jdbc.SQLServerException;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.util.sql.ConnectionManager;
import com.winpoint.oes.util.sql.DateConverter;

public class UserProfileDao {
	public boolean updateUserProfile(UserProfile userProfile){
		
		try(Connection connection = ConnectionManager.getConnection()){
			PreparedStatement preparedStatement = connection.prepareStatement(
					"UPDATE USER_PROFILE SET FIRST_NAME = ?, LAST_NAME = ?,"
					+ "EMAIL_ID = ?, MOBILE_NUMBER = ?, ADDRESS = ?, BIRTHDATE = ?,"
					+ "COLLEGE = ?, DEGREE = ?, BRANCH = ?,YEAR_OF_GRADUATION = ?,"
					+ "PHOTO_LOCATION = ?, PASSWORD = ?, SECURITY_QUESTION_ID = ?,"
					+ "SECURITY_ANSWER = ?, USER_CATEGORY_ID = ?, OCCUPATION = ?,"
					+ "ORGANIZATION = ?, DESIGNATION = ?, DOMAIN = ?, ROLE = ?, EXPERIENCE = ? where USER_ID = ?");
			
			preparedStatement.setString(1, userProfile.getFirstName());
			preparedStatement.setString(2, userProfile.getLastName());
			preparedStatement.setString(3, userProfile.getEmail());
			preparedStatement.setString(4, userProfile.getMobileNumber());
			preparedStatement.setString(5, userProfile.getAddress());
			preparedStatement.setDate(6, DateConverter.convertUtilToSqlDate(userProfile.getBirthDate()));
			preparedStatement.setString(7, userProfile.getCollege());
			preparedStatement.setString(8, userProfile.getDegree());
			preparedStatement.setString(9, userProfile.getBranch());
			preparedStatement.setInt(10, userProfile.getYearOfGraduation());
			preparedStatement.setString(11, userProfile.getPhotoLocation());
			preparedStatement.setString(12, userProfile.getPassword());
			preparedStatement.setInt(13, userProfile.getSecurityQuestionId());
			preparedStatement.setString(14, userProfile.getSecurityAnswer());
			preparedStatement.setInt(15, userProfile.getUserCategoryId());
			preparedStatement.setString(16, userProfile.getOccupation());
			preparedStatement.setString(17, userProfile.getOrganisation());
			preparedStatement.setString(18, userProfile.getDesignation());
			preparedStatement.setString(19, userProfile.getDomain());
			preparedStatement.setString(20, userProfile.getRole());
			preparedStatement.setInt(21, 1);//userProfile.getExperience());
			preparedStatement.setInt(22, userProfile.getUserId());
			
			preparedStatement.executeUpdate();
			preparedStatement.close();
			
		} 
		catch (SQLServerException e) {
			e.printStackTrace();
		} 
		catch (SQLException e1) {
			e1.printStackTrace();
		} 
		
		return true;
		
	}
	
public ArrayList<UserProfile> getUsers() {
	ArrayList<UserProfile> allUsersList = new ArrayList<UserProfile>();
		
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			
			String query1 = "select USER_ID, FIRST_NAME, EMAIL_ID, LAST_NAME, COLLEGE, MOBILE_NUMBER\r\n" + 
					"from USER_PROFILE";
			
//			String query2 = "select COURSE_NAME\r\n" + 
//					"from STUDENT_COURSE_DETAILS join COURSES on COURSES.COURSE_ID = STUDENT_COURSE_DETAILS.COURSE_ID\r\n" + 
//					"where USER_ID = ";
//			
			ResultSet rs = statement.executeQuery(query1);
			
//			Hashtable<Integer, UserProfile> userIdHashTable = new Hashtable<Integer, UserProfile>();
			while(rs.next()) {
				allUsersList.add(new UserProfile(rs.getInt("USER_ID"), rs.getString("FIRST_NAME"), rs.getString("LAST_NAME"), rs.getString("EMAIL_ID"), rs.getString("MOBILE_NUMBER"), rs.getString("COLLEGE")));
				//userIdHashTable.put(rs.getInt("USER_ID"), new UserProfile(rs.getInt("USER_ID"), rs.getString("FIRST_NAME"), rs.getString("LAST_NAME"), rs.getString("EMAIL_ID"), rs.getString("MOBILE_NUMBER"), rs.getString("COLLEGE")));
			}
			
//			Enumeration<Integer> keys = userIdHashTable.keys();
//			while(keys.hasMoreElements()) {
//				int i = keys.nextElement();
//				
//				ResultSet rs1 = statement.executeQuery(query2 + i);
//				
//				StringBuilder coursesString = new StringBuilder("");
//				while(rs1.next()) {
//					coursesString.append(rs1.getString("COURSE_NAME") + ", ");	
//				}
//				
//				if(coursesString.toString().equals("")) {
//					System.out.println("None");
//				}
//				else {
//					coursesString.replace(coursesString.length() - 2, coursesString.length(), " ");
//					System.out.println(coursesString);
//				}
//				
//				UserProfile profile = userIdHashTable.get(i);
//				profile.setAddress(coursesString.toString());
//				
//				userIdHashTable.put(i, profile);
//			}
//			
			
//			System.out.println("\nAfter everything trying to access address (coursesString) from userprofile\n\n");
//			UserProfile profile = userIdHashTable.get(1);
//			System.out.println(profile.getAddress());
//			
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
			allUsersList = null;
			e.printStackTrace();
		}
		
		return allUsersList;
	}

	public String getCoursesList(Integer userId) {
		StringBuilder coursesString = new StringBuilder("");		
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			
			String query = "select COURSE_NAME\r\n" + 
					"from STUDENT_COURSE_DETAILS join COURSES on COURSES.COURSE_ID = STUDENT_COURSE_DETAILS.COURSE_ID\r\n" + 
					"where USER_ID = " + userId;
			
			ResultSet rs = statement.executeQuery(query);


			while(rs.next()) {
				coursesString.append(rs.getString("COURSE_NAME") + ", ");
			}
			
			if(coursesString.toString().equals("")) {
				coursesString.append("None");
			}
			else {
				coursesString.replace(coursesString.length() - 2, coursesString.length(), " ");
			}
			
			
			
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		return coursesString.toString();
	}
}
