package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import com.microsoft.sqlserver.jdbc.SQLServerException;
import com.winpoint.oes.beans.Rules;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.beans.TestFeedback;
import com.winpoint.oes.util.sql.ConnectionManager;

public class TestFeedbackDao {

	public boolean insertTestFeedback(int userId, int courseId, List<TestFeedback> testFeedbackList) {
		
		ResultSet resultSet = null;
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			/* SELECT TEST_DETAIL_ID FROM TEST_DETAILS WHERE COURSE_ID=1 AND TEST_NUMBER = 1
			    SELECT USER_TEST_ID FROM USER_TEST_DETAILS WHERE USER_ID = 1 AND TEST_DETAIL_ID = 1
			 */
			int testDetailId = 0;
			int userTestId = 0;
			String query = "SELECT TEST_DETAIL_ID FROM TEST_DETAILS WHERE TEST_NUMBER =1 AND COURSE_ID = " + courseId;
			resultSet = statement.executeQuery(query);
			while(resultSet.next()) {
			   testDetailId = resultSet.getInt("TEST_DETAIL_ID");
			}
			query = "SELECT USER_TEST_ID FROM USER_TEST_DETAILS WHERE USER_ID = " + userId + "AND TEST_DETAIL_ID = " + testDetailId;
			resultSet = statement.executeQuery(query);
			while(resultSet.next()) {
			   
			   userTestId = resultSet.getInt("USER_TEST_ID");
			}
			
			for(TestFeedback testFeedbak : testFeedbackList){
				query = "INSERT INTO [dbo].[TEST_FEEDBACK]\r\n" + 
						"           ([USER_TEST_ID]\r\n" + 
						"           ,[FEEDBACK_QUESTION_ID]\r\n" + 
						"           ,[RESPONSE]\r\n" +  ")" +
						"     VALUES\r\n" + 
						"           (" + userTestId + "\r\n" + 
						"           ," + testFeedbak.getFeedbackQuestionId() + "\r\n" + 
						"           ," + testFeedbak.getResponse() + ")";
				statement.executeUpdate(query);
			}
			
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
