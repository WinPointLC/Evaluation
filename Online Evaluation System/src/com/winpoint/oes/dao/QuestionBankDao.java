package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import com.microsoft.sqlserver.jdbc.SQLServerException;
import com.winpoint.oes.beans.QuestionBank;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.util.sql.ConnectionManager;

public class QuestionBankDao {

	public List<Stream> getStreamList() {
		
		List<Stream> streamList = new ArrayList<Stream>();
		
		ResultSet resultSet = null;
		/*SQLServerDataSource dataSource = new SQLServerDataSource();
		dataSource.setUser("sa");
		dataSource.setPassword("winpoint");
		//dataSource.setServerName("SHRIRANGMHALGI\\SQLEXPRESS");
		dataSource.setPortNumber(Integer.parseInt("1433"));
		dataSource.setDatabaseName("OES_TESTING");*/

		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			
			String query = "SELECT STREAM_ID, STREAM_NAME FROM STREAMS";
			resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				int streamId = resultSet.getInt("stream_id");
				String streamName = resultSet.getString("stream_name");
				Stream stream = new Stream(streamId, streamName);
				streamList.add(stream);
			}
		} catch (SQLServerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
		return streamList;
		
	}

	public List<QuestionBank> getQuestionsList(int testdetailId) {
		// TODO Auto-generated method stub
		int currentCourseId = 0;
		List<QuestionBank> questionsList = new ArrayList<QuestionBank>();
		
		ResultSet resultSet = null;
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			System.out.println("testdetailId = " + testdetailId);
			String query = "select course_id from TEST_DETAILS where TEST_DETAIL_ID = " + testdetailId;
			resultSet = statement.executeQuery(query);
			while(resultSet.next()) {
				currentCourseId = resultSet.getInt("course_id");
			}
			query = "select \r\n" + 
					"		top (select sum(NUMBER_OF_QUESTIONS) from TEST_DIFFICULTY where TEST_DETAIL_ID = " + testdetailId + " ) QUESTION_ID,\r\n" + 
					"		QUESTION, \r\n" + 
					"		OPTION_1, \r\n" + 
					"		OPTION_2, \r\n" + 
					"		OPTION_3, \r\n" + 
					"		OPTION_4, \r\n" + 
					"		CORRECT_OPTION, \r\n" + 
					"		MARKS,\r\n" + 
					"		crs.COURSE_ID,\r\n" +
					"		COURSE_NAME,\r\n" +
					"		marks,\r\n" + 
					"		tqb.TOPIC_ID,\r\n" + 
					"		TOPIC_NAME,\r\n" + 
					"		tqb.DIFFICULTY_LEVEL_ID\r\n" + 
					"		DIFFICULTY_LEVEL_NAME\r\n" + 
					"	from TECHNICAL_QUESTION_BANK tqb JOIN COURSES crs\r\n" + 
					"	ON tqb.COURSE_ID = crs.COURSE_ID\r\n" + 
					"		JOIN TOPICS tp\r\n" + 
					"		ON tqb.TOPIC_ID = tp.TOPIC_ID\r\n" + 
					"			JOIN DIFFICULTY_LEVEL dl\r\n" + 
					"			ON tqb.DIFFICULTY_LEVEL_ID = dl.DIFFICULTY_LEVEL_ID\r\n" + 
					"				JOIN TEST_DIFFICULTY td\r\n" + 
					"				ON tqb.topic_id = td.topic_id\r\n" + 
					"\r\n" + "where tqb.course_id = " + currentCourseId + " " +
					"order by newid()";
			System.out.println("query from QuestionBankDao = " + query);
			resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				int questionId = resultSet.getInt("question_id");
				int courseId = resultSet.getInt("course_id");
				System.out.println("courseId from QuestionBankDao = " + courseId);
				int topicId = resultSet.getInt("topic_id");
				String questionDescr = resultSet.getString("question");
				String option1 = resultSet.getString("OPTION_1");
				String option2 = resultSet.getString("OPTION_2");
				String option3 = resultSet.getString("OPTION_3");
				String option4 = resultSet.getString("OPTION_4");
				int marks = resultSet.getInt("MARKS");
				String correctOption = resultSet.getString("CORRECT_OPTION");
				int marksarks = resultSet.getInt("marks");
				int difficultyLevelId = 1;//resultSet.getInt("DIFFICULTY_LEVEL_ID");
				QuestionBank question = new QuestionBank(questionId, courseId, topicId, questionDescr, option1, option2, option3, option4, correctOption, marks, difficultyLevelId);
				//System.out.println(question);
				questionsList.add(question);
			}
		} catch (SQLServerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
		return questionsList;
	}
}
