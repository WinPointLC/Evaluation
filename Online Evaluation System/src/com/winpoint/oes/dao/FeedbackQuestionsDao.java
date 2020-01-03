package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.List;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import com.microsoft.sqlserver.jdbc.SQLServerException;
import com.winpoint.oes.beans.FeedbackQuestions;
import com.winpoint.oes.beans.Rules;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.util.sql.ConnectionManager;

public class FeedbackQuestionsDao {

	public ArrayList<FeedbackQuestions> getFeedbackQuestions() {
		
		ArrayList<FeedbackQuestions> feedbackQuestionsList = new ArrayList<FeedbackQuestions>();
		
		ResultSet resultSet = null;
		
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			
			String query = "select FEEDBACK_QUESTION_ID, FEEDBACK_QUESTION, FEEDBACK_QUESTION_TYPE from FEEDBACK_QUESTIONS";
			resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				int feedbackQuestionId = resultSet.getInt("FEEDBACK_QUESTION_ID");
				String feedbackQuestion = resultSet.getString("FEEDBACK_QUESTION");
				String feedbackQuestionType = resultSet.getString("FEEDBACK_QUESTION_TYPE");
				FeedbackQuestions feedbackQuestions = new FeedbackQuestions();
				feedbackQuestions.setFeedbackQuestionId(feedbackQuestionId);
				feedbackQuestions.setFeedbackQuestion(feedbackQuestion);
				feedbackQuestions.setFeedbackQuestionType(feedbackQuestionType);
				feedbackQuestionsList.add(feedbackQuestions);
			}
		} 
		catch (SQLServerException e) {
			e.printStackTrace();
		} 
		catch (SQLException e1) {
			e1.printStackTrace();
		} 
		return feedbackQuestionsList;
		
	}
}
