package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.microsoft.sqlserver.jdbc.SQLServerException;
import com.winpoint.oes.beans.SecurityQuestions;
import com.winpoint.oes.beans.UserCategory;
import com.winpoint.oes.util.sql.ConnectionManager;

public class UserCategoryDao {
	
	public List<UserCategory> getUserCategoryList() {
		
		List<UserCategory> userCategoryList = new ArrayList<UserCategory>();
		
		ResultSet resultSet = null;
		
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			
			String query = "select USER_CATEGORY_ID, USER_CATEGORY_NAME from USER_CATEGORY";
			resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				int userCategoryId = resultSet.getInt("USER_CATEGORY_ID");
				String userCategoryName = resultSet.getString("USER_CATEGORY_NAME");
				UserCategory userCategory = new UserCategory(userCategoryId, userCategoryName, null, null);
				userCategoryList.add(userCategory);
			}
		} 
		catch (SQLServerException e) {
			e.printStackTrace();
		} 
		catch (SQLException e1) {
			e1.printStackTrace();
		} 
		return userCategoryList;
	
	}

}
