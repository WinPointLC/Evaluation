package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import com.winpoint.oes.beans.UserProfile;

public class LoginDao {
	UserProfile userProfile = null;
	public UserProfile login(String email, String password) {
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
			
			String query = "SELECT	USER_PROFILE.USERID,\r\n" + 
					"		FIRST_NAME, \r\n" + 
					"		EMAIL, \r\n" + 
					"		PHOTO, \r\n" + 
					"		USER_PROFILE.USER_CATEGORY_ID, \r\n" + 
					"		USER_CATEGORY.USER_CATEGORY_NAME ,\r\n" + 
					"		EMPLOYEE_CATEGORY.EMPLOYEE_CATEGORY_NAME\r\n" + 
					"	FROM USER_PROFILE  \r\n" + 
					"		JOIN USER_CATEGORY \r\n" + 
					"		ON USER_PROFILE.USER_CATEGORY_ID = USER_CATEGORY.USER_CATEGORY_ID\r\n" + 
					"			LEFT OUTER JOIN EMPLOYEE_DETAILS D\r\n" + 
					"			ON USER_PROFILE.USERID = D.USERID\r\n" + 
					"				LEFT OUTER JOIN EMPLOYEE_CATEGORY\r\n" + 
					"				ON D.EMPLOYEE_CATEGORY_ID = EMPLOYEE_CATEGORY.EMPLOYEE_CATEGORY_ID\r\n" + 
					"	WHERE (USER_PROFILE.EMAIL = '" + email + "') AND USER_PROFILE.PASSWORD = '" + password + "'";
			
			resultSet = statement.executeQuery(query);
			while(resultSet.next()) {
				int userId = resultSet.getInt("userid");
				String firstName = resultSet.getString("first_name");
				//String email = resultSet.getString("email");
				int userCategoryId = resultSet.getInt("USER_CATEGORY_ID");
				String userCategoryName = resultSet.getString("USER_CATEGORY_NAME");
				String employeeCategoryName = resultSet.getString("EMPLOYEE_CATEGORY_NAME");
				//String photo = resultSet.getString("PHOTO");
	            System.out.println(userId);
	            System.out.println(firstName);
	            System.out.println(userCategoryId);
	            System.out.println(userCategoryName);
	            System.out.println(employeeCategoryName);
	            
	            userProfile = new UserProfile(userId, firstName, email, userCategoryId);
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
