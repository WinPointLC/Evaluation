package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import javax.swing.ImageIcon;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.util.sql.ConnectionManager;
import com.winpoint.oes.util.sql.DateConverter;

public class LoginDao {
	UserProfile userProfile = null;
	
	public UserProfile validateLogin(String emailId, String password) {
		boolean flag = false;
		ResultSet resultSet = null;
		
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			
			String query = "SELECT USER_PROFILE.USER_ID, FIRST_NAME, LAST_NAME, USER_CATEGORY.USER_CATEGORY_ID, USER_CATEGORY_NAME, EMPLOYEE_CATEGORY.EMPLOYEE_CATEGORY_ID,\r\n" + 
					"PHOTO_LOCATION, MOBILE_NUMBER, ADDRESS, BIRTHDATE, COLLEGE, DEGREE, BRANCH, YEAR_OF_GRADUATION, SECURITY_QUESTION_ID, SECURITY_ANSWER, OCCUPATION,\r\n" + 
					"ORGANIZATION, DESIGNATION, DOMAIN, ROLE, EXPERIENCE, GENDER\r\n" + 
					"FROM USER_PROFILE JOIN USER_CATEGORY\r\n" + 
					"ON USER_PROFILE.USER_CATEGORY_ID = USER_CATEGORY.USER_CATEGORY_ID\r\n" + 
					"LEFT OUTER JOIN EMPLOYEE_DETAILS D\r\n" + 
					"ON USER_PROFILE.USER_ID = D.USER_ID\r\n" + 
					"LEFT OUTER JOIN EMPLOYEE_CATEGORY\r\n" + 
					"ON D.EMPLOYEE_CATEGORY_ID = EMPLOYEE_CATEGORY.EMPLOYEE_CATEGORY_ID\r\n" + 
					"WHERE USER_PROFILE.EMAIL_ID = '" + emailId +"' AND USER_PROFILE.PASSWORD = '" + password + "'\r\n" + 
					""; 
					
			resultSet = statement.executeQuery(query);
			if(resultSet.next()) {
				Integer userId = resultSet.getInt("user_id");
				String firstName = resultSet.getString("first_name");
				String lastName = resultSet.getString("last_name");
				Integer userCategoryId = resultSet.getInt("USER_CATEGORY_ID");
				//String userCategoryName = resultSet.getString("USER_CATEGORY_NAME");
				//String employeeCategoryId = resultSet.getString("EMPLOYEE_CATEGORY_ID");
				String photoLocation = resultSet.getString("PHOTO_LOCATION");
				String mobileNumber = resultSet.getString("Mobile_NUMBER");
				String address = resultSet.getString("ADDRESS");
				Date birthDate = DateConverter.convertSqlToUtilDate(resultSet.getDate("BIRTHDATE"));				
				String college = resultSet.getString("COLLEGE");
				String degree = resultSet.getString("DEGREE");
				String branch = resultSet.getString("BRANCH");
				Integer yearOfGraduation = resultSet.getInt("YEAR_OF_GRADUATION");
				Integer securityQuestionId = resultSet.getInt("SECURITY_QUESTION_ID");
				String securityQuestion = "Question";
				String securityAnswer = resultSet.getString("SECURITY_ANSWER");
				String occupation = resultSet.getString("OCCUPATION");
				String organisation = resultSet.getString("ORGANIZATION");
				String designation = resultSet.getString("DESIGNATION");
				String domain = resultSet.getString("DOMAIN");
				String role = resultSet.getString("ROLE");
				Integer experience = resultSet.getInt("EXPERIENCE");
				String gender = resultSet.getString("GENDER");
	           
				userProfile = new UserProfile(userId, firstName, lastName, emailId, mobileNumber,
						address, birthDate, college, degree, branch, yearOfGraduation,
						photoLocation, password, gender, securityQuestionId, securityQuestion,
						securityAnswer, userCategoryId, occupation, organisation, designation,
						domain, role, experience);
				
	            flag = true;
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		return userProfile;
	}
	
	public boolean changePassword(int userId, String password) {
		boolean flag = false;
		
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			String query = "update USER_PROFILE \r\n" + 
					"	SET USER_PROFILE.PASSWORD = '" + password + "'" + "\r\n" + 
					"	WHERE USER_ID="+userId;
			statement.executeUpdate(query);
			flag = true;	
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	public UserProfile getSecurityQuesAns(String emailId) {
		UserProfile userProfile = new UserProfile();
		ResultSet resultSet = null;
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			
			String query = "SELECT	USER_PROFILE.USER_ID,\r\n" + 
					"		USER_PROFILE.FIRST_NAME,\r\n" + 
					"		USER_PROFILE.LAST_NAME,\r\n" + 
					"		USER_PROFILE.EMAIL_ID,\r\n" + 
					"		SECURITY_QUESTIONS.SECURITY_QUESTION_ID,\r\n" +
					"		SECURITY_QUESTIONS.SECURITY_QUESTION,\r\n" + 
					"		USER_PROFILE.SECURITY_ANSWER\r\n" + 
					"	FROM USER_PROFILE\r\n" + 
					"	JOIN \r\n" + 
					"	SECURITY_QUESTIONS\r\n" + 
					"	ON USER_PROFILE.SECURITY_QUESTION_ID = SECURITY_QUESTIONS.SECURITY_QUESTION_ID\r\n" + 
					"	WHERE USER_PROFILE.EMAIL_ID = '" + emailId + "'";
			resultSet = statement.executeQuery(query);
			if(resultSet.next()) {
				int userId = resultSet.getInt("USER_ID");
				String firstName = resultSet.getString("FIRST_NAME");
				String lastName = resultSet.getString("LAST_NAME");
				String email = resultSet.getString("EMAIL_ID");
				String securityQuestion = resultSet.getString("SECURITY_QUESTION");
				int securityQuestionId = resultSet.getInt("SECURITY_QUESTION_ID");
				String securityAnswer = resultSet.getString("SECURITY_ANSWER");
				
				userProfile = new UserProfile();
				userProfile.setUserId(userId);
				userProfile.setFirstName(firstName);
				userProfile.setLastName(lastName);
				userProfile.setEmail(email);
				userProfile.setSecurityQuestionId(securityQuestionId);
				userProfile.setSecurityQuestion(securityQuestion);
				userProfile.setSecurityAnswer(securityAnswer);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return userProfile;
	}
	
	public int checkDuplicateEmail(String email) {
		int count = -1;
		
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			String query = "select count(0) from USER_PROFILE where EMAIL_ID = '" + email + "'";
			ResultSet rs = statement.executeQuery(query);
			
			while(rs.next()) {
				count = rs.getInt(1);
			}			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}
	
	public UserProfile createLogin(UserProfile userProfile) {
		//System.out.println(!checkDuplicateEmail(userProfile.getEmail()));
		if(checkDuplicateEmail(userProfile.getEmail()) == 0) {
			try(Connection connection = ConnectionManager.getConnection()){
				Statement statement = connection.createStatement();
				String email = userProfile.getEmail();
				String password = userProfile.getPassword();			
				String query = "INSERT INTO [USER_PROFILE]\r\n" + 
						"           ([FIRST_NAME]\r\n" + 
						"           ,[LAST_NAME]\r\n" + 
						"           ,[EMAIL_ID]\r\n" + 
						"           ,[MOBILE_NUMBER]\r\n" + 
						"           ,[ADDRESS]\r\n" + 
						"           ,[BIRTHDATE]\r\n" + 
						"           ,[COLLEGE]\r\n" + 
						"           ,[DEGREE]\r\n" + 
						"           ,[BRANCH]\r\n" + 
						"           ,[YEAR_OF_GRADUATION]\r\n" + 
						"           ,[PHOTO_LOCATION]\r\n" + 
						"           ,[PASSWORD]\r\n" + 
						"           ,[SECURITY_QUESTION_ID]\r\n" + 
						"           ,[SECURITY_ANSWER]\r\n" + 
						"           ,[USER_CATEGORY_ID]\r\n" + 
						"           ,[OCCUPATION]\r\n" + 
						"           ,[ORGANIZATION]\r\n" + 
						"           ,[DESIGNATION]\r\n" + 
						"           ,[DOMAIN]\r\n" + 
						"           ,[ROLE]\r\n" + 
						"           ,[EXPERIENCE]\r\n" + 
						"           ,[CREATED_BY]\r\n" + 
						"           ,[CREATED_DATE])\r\n" + 
						"     VALUES\r\n" + 
						"           ('" + userProfile.getFirstName() + "'\r\n" + 
						"           ,'" + userProfile.getLastName() + "'\r\n" + 
						"           ,'" + email + "'\r\n" + 
						"           ," + userProfile.getMobileNumber() + "\r\n" + 
						"           ," + null + "\r\n" + 
						"           ," + null + "\r\n" + 
						"           ," + null + "\r\n" + 
						"           ," + null + "\r\n" + 
						"           ," + null + "\r\n" + 
						"           ," + null + "\r\n" + 
						"           ," + null + "\r\n" + 
						"           ,'" + password + "'\r\n" + 
						"           ," + userProfile.getSecurityQuestionId() + "\r\n" + 
						"           ,'" + userProfile.getSecurityAnswer() + "'\r\n" + 
						"           ," + userProfile.getUserCategoryId() + "\r\n" + 
						"           ," + null + "\r\n" + 
						"           ," + null + "\r\n" + 
						"           ," + null + "\r\n" + 
						"           ," + null + "\r\n" + 
						"           ," + null + "\r\n" + 
						"           ," + null + "\r\n" + 
						"           ," + 1 + "\r\n" + 
						"           ," + null + ")";
				statement.executeUpdate(query);
				} catch (SQLException e) {
				e.printStackTrace();
			}
			return validateLogin(userProfile.getEmail(), userProfile.getPassword());
		}
		else {
			return null;
		}
	}
}
