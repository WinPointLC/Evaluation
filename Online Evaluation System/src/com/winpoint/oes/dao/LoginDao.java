package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.swing.ImageIcon;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.util.sql.ConnectionManager;

public class LoginDao {
	UserProfile userProfile = null;
	public UserProfile validateLogin(String emailId, String password) {
		boolean flag = false;
		ResultSet resultSet = null;
		/*SQLServerDataSource dataSource = new SQLServerDataSource();
		dataSource.setUser("sa");
		dataSource.setPassword("winpoint");
		dataSource.setServerName("SHRIRANGMHALGI\\SQLEXPRESS");
		dataSource.setPortNumber(Integer.parseInt("1433"));
		dataSource.setDatabaseName("OES_TESTING");*/

		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			
			String query = "SELECT	USER_PROFILE.USER_ID,\r\n" + 
					"		FIRST_NAME, \r\n" + 
					"		LAST_NAME, \r\n" + 
					"		PHOTO_LOCATION, \r\n" + 
					"		USER_PROFILE.USER_CATEGORY_ID,\r\n" + 
					"		EMPLOYEE_CATEGORY.EMPLOYEE_CATEGORY_ID\r\n" + 
					"	FROM USER_PROFILE JOIN USER_CATEGORY \r\n" + 
					"		ON USER_PROFILE.USER_CATEGORY_ID = USER_CATEGORY.USER_CATEGORY_ID\r\n" + 
					"			LEFT OUTER JOIN EMPLOYEE_DETAILS D\r\n" + 
					"			ON USER_PROFILE.USER_ID = D.USER_ID\r\n" + 
					"				LEFT OUTER JOIN EMPLOYEE_CATEGORY\r\n" + 
					"				ON D.EMPLOYEE_CATEGORY_ID = EMPLOYEE_CATEGORY.EMPLOYEE_CATEGORY_ID\r\n" + 
					"	WHERE USER_PROFILE.EMAIL_ID = '" + emailId + "' AND USER_PROFILE.PASSWORD = '" + password + "'";
			
			resultSet = statement.executeQuery(query);
			while(resultSet.next()) {
				int userId = resultSet.getInt("user_id");
				String firstName = resultSet.getString("first_name");
				String lastName = resultSet.getString("last_name");
				//String email = resultSet.getString("email");
				int userCategoryId = resultSet.getInt("USER_CATEGORY_ID");
				//String userCategoryName = resultSet.getString("USER_CATEGORY_NAME");
				String employeeCategoryId = resultSet.getString("EMPLOYEE_CATEGORY_ID");
				String photoLocation = resultSet.getString("PHOTO_LOCATION");
				//String photoLocation = "/OnlineEvaluationSystem/img/photos/client/Knitting Balls.jpg";
	            System.out.println(userId);
	            System.out.println(firstName);
	            System.out.println(userCategoryId);
	            //System.out.println(userCategoryName);
	            System.out.println(employeeCategoryId);
	            
	            userProfile = new UserProfile(userId, firstName, lastName, emailId, userCategoryId, photoLocation);
				flag = true;
			}
		}
		catch (Exception e) {
			System.out.println("Exception raised" + e);
		}
		System.out.println("flag =" + flag);
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
			System.out.println("Exception raised" + e);
		}
		return flag;
	}
	public ResultSet getDashboardDetails(int userId) {
		// TODO Auto-generated method stub
		return null;
	}

	public UserProfile getSecurityQuesAns(String emailId) {
		UserProfile userProfile = new UserProfile();
		ResultSet resultSet = null;
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			
			/*String query = "SELECT	USER_PROFILE.SEC,\r\n" + 
					"		FIRST_NAME, \r\n" + 
					"		LAST_NAME, \r\n" + 
					"		PHOTO_LOCATION, \r\n" + 
					"		USER_PROFILE.USER_CATEGORY_ID,\r\n" + 
					"		EMPLOYEE_CATEGORY.EMPLOYEE_CATEGORY_ID\r\n" + 
					"	FROM USER_PROFILE JOIN USER_CATEGORY \r\n" + 
					"		ON USER_PROFILE.USER_CATEGORY_ID = USER_CATEGORY.USER_CATEGORY_ID\r\n" + 
					"			LEFT OUTER JOIN EMPLOYEE_DETAILS D\r\n" + 
					"			ON USER_PROFILE.USER_ID = D.USER_ID\r\n" + 
					"				LEFT OUTER JOIN EMPLOYEE_CATEGORY\r\n" + 
					"				ON D.EMPLOYEE_CATEGORY_ID = EMPLOYEE_CATEGORY.EMPLOYEE_CATEGORY_ID\r\n" + 
					"	WHERE USER_PROFILE.EMAIL_ID = '" + emailId + "'";*/
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
			while(resultSet.next()) {
				int userId = resultSet.getInt("USER_ID");
				String firstName = resultSet.getString("FIRST_NAME");
				String lastName = resultSet.getString("LAST_NAME");
				String email = resultSet.getString("EMAIL_ID");
				String securityQuestion = resultSet.getString("SECURITY_QUESTION");
				int securityQuestionId = resultSet.getInt("SECURITY_QUESTION_ID");
				String securityAnswer = resultSet.getString("SECURITY_ANSWER");
				
				System.out.println("" + securityQuestion + " " + securityAnswer);
				
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
			System.out.println("Exception raised" + e);
		}
		return userProfile;
	}
	public UserProfile createLogin(UserProfile userProfile) {
		// TODO Auto-generated method stub
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
			System.out.println("Insert query is: \n" + query);
			statement.executeUpdate(query);
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return validateLogin(userProfile.getEmail(), userProfile.getPassword());
	}
}
