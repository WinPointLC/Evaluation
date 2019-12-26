package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.microsoft.sqlserver.jdbc.SQLServerException;
import com.winpoint.oes.beans.QuestionBank;
import com.winpoint.oes.beans.Result;
import com.winpoint.oes.beans.TestFeedback;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.util.sql.ConnectionManager;

public class UserTestDetailsDao {
		
	public boolean updateUserTestDetails(int userId, List<QuestionBank> questionsList, Result result) {
		Iterator<QuestionBank> iter = questionsList.iterator();
		QuestionBank firstQuestion = iter.next();
		int courseId = firstQuestion.getCourseId();
		int testDetailId = getTestDetailID(courseId);
		try(Connection connection = ConnectionManager.getConnection()){
			
			int hrs = 0-result.getHours();
			int mins = 59-result.getMinutes();
			int secs = 60-result.getSeconds();
			Time timeTaken = new Time((hrs*3600 + mins*60 + secs)*1000);
			PreparedStatement preparedStatement = connection.prepareStatement(
					"UPDATE USER_TEST_DETAILS SET MARKS_RECEIVED = ?, TIME_TAKEN = ?, ATTEMPTED=1"
					+ " where USER_ID = ? AND TEST_DETAIL_ID = ?");
			preparedStatement.setInt(1, result.getMarks());
			preparedStatement.setTime(2, timeTaken);
			preparedStatement.setInt(3, userId);
			preparedStatement.setInt(4, testDetailId);
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
	
	public int getTestDetailID(int courseId) {
		int testDetailId = 0;
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			int userTestId = 0;
			
			String query = "SELECT TEST_DETAIL_ID FROM TEST_DETAILS WHERE TEST_NUMBER =1 AND COURSE_ID = " + courseId;
			ResultSet resultSet = statement.executeQuery(query);
			while(resultSet.next()) {
			   testDetailId = resultSet.getInt("TEST_DETAIL_ID");
			}
		} 
		catch (SQLServerException e) {
			e.printStackTrace();
		} 
		catch (SQLException e1) {
			e1.printStackTrace();
		} 
		
		return testDetailId;
	}

	public void createUserTestDetails(int userId, int courseId) {
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			int testDetailId = getTestDetailID(courseId);
			String query = "INSERT INTO USER_TEST_DETAILS (USER_ID, TEST_DETAIL_ID, FEE_STATUS) VALUES (" + userId + ","+ testDetailId + ",'True')" ;
			statement.executeUpdate(query);
		} 
		catch (SQLServerException e) {
			e.printStackTrace();
		} 
		catch (SQLException e1) {
			e1.printStackTrace();
		} 
	}
}
