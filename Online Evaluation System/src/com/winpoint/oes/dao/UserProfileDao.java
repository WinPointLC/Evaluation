package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.microsoft.sqlserver.jdbc.SQLServerException;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.util.sql.ConnectionManager;

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
			java.sql.Date birthDate = null;//new java.sql.Date(userProfile.getBirthDate().getTime());
			preparedStatement.setDate(6, birthDate);
			preparedStatement.setString(7, userProfile.getCollege());
			preparedStatement.setString(8, userProfile.getDegree());
			preparedStatement.setString(9, userProfile.getBranch());
			java.sql.Date yearOfGraduation = null;//new java.sql.Date(userProfile.getYearOfGraduation().getTime());
			preparedStatement.setDate(10, yearOfGraduation);
			preparedStatement.setString(11, userProfile.getPhotoLocation());
			preparedStatement.setString(12, userProfile.getPassword());
			preparedStatement.setInt(13, userProfile.getSecurityQuestionId());
			//preparedStatement.setInt(13, 1);
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
			
			System.out.println("User Profile updated successfully");
			
		} catch (SQLServerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
		
		return true;
		
	}
}
