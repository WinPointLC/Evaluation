package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.swing.ImageIcon;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import com.winpoint.oes.beans.UserProfile;

public class LoginDao {
	UserProfile userProfile = null;
	public UserProfile login(String emailId, String password) {
		boolean flag = false;
		ResultSet resultSet = null;
		SQLServerDataSource dataSource = new SQLServerDataSource();
		dataSource.setUser("sa");
		dataSource.setPassword("winpoint");
		dataSource.setServerName("SHRIRANGMHALGI\\SQLEXPRESS");
		dataSource.setPortNumber(Integer.parseInt("1433"));
		dataSource.setDatabaseName("OES_TESTING");

		try(Connection connection = dataSource.getConnection()){
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
	
	public ResultSet getDashboardDetails(int userId) {
		// TODO Auto-generated method stub
		return null;
	}
}
