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
import com.winpoint.oes.beans.TopicWisePerformance;
import com.winpoint.oes.beans.QuestionBank;
import com.winpoint.oes.beans.Result;
import com.winpoint.oes.beans.TestFeedback;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.util.sql.ConnectionManager;

public class AnalyticsDao {
	public ArrayList<TopicWisePerformance > getStudentTestAnalysis(int userId, int courseId){
		ArrayList<TopicWisePerformance> topicPerfoList = new ArrayList<>();
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			
			int userTestId = 0;
			String query = "";
			ResultSet resultSet = null;
			int testDetailId = getTestDetailID(courseId);
						
			query = "SELECT USER_TEST_ID FROM USER_TEST_DETAILS WHERE USER_ID = " + userId + "AND TEST_DETAIL_ID = " + testDetailId;
			resultSet = statement.executeQuery(query);
			while(resultSet.next()) {
			   
			   userTestId = resultSet.getInt("USER_TEST_ID");
			}
			
			String courseName = "";
			String courseTypeName = "";
			query = "SELECT COURSE_TYPE.COURSE_TYPE_NAME, COURSES.COURSE_ID, COURSES.COURSE_NAME\r\n" + 
					"					FROM COURSES JOIN COURSE_TYPE  \r\n" + 
					"						ON COURSES.COURSE_TYPE_ID =  COURSE_TYPE.COURSE_TYPE_ID \r\n" + 
					"							\r\n" + 
					"					WHERE COURSES.COURSE_ID =" + courseId;
			resultSet = statement.executeQuery(query);
			while(resultSet.next()) {
				courseName = resultSet.getString("COURSE_NAME");
				courseTypeName = resultSet.getString("COURSE_TYPE_NAME");
			}
			 
			String tableName = "STUDENT_TEST_RESULT_" + courseName.toUpperCase() + "_" + courseTypeName.toUpperCase();
			System.out.println(tableName + "***" + tableName);
			String topicName = "";
			int topicwiseNumberOfCorrectAns;
			
			query = "SELECT T.TOPIC_NAME,  \r\n" + 
					"	   COUNT(s.QUESTION_ID) TOPIC_WISE_COUNT \r\n" + 
					"FROM TOPICS T, " + tableName + " S \r\n" + 
					"JOIN TECHNICAL_QUESTION_BANK TB\r\n" + 
					"ON TB.QUESTION_ID = S.QUESTION_ID\r\n" + 
					"WHERE IS_CORRECT='1' AND USER_TEST_ID= " + userTestId + " AND TB.COURSE_ID= " + courseId + " AND T.TOPIC_ID = TB.TOPIC_ID\r\n" + 
					"GROUP BY  T.TOPIC_NAME";
			resultSet = statement.executeQuery(query);
			while(resultSet.next()) {
				topicName = resultSet.getString("topic_name");
				topicwiseNumberOfCorrectAns = resultSet.getInt("TOPIC_WISE_COUNT");
				System.out.println("Topic Name: " + topicName + " TOPIC_WISE_COUNT: " + topicwiseNumberOfCorrectAns);
				TopicWisePerformance topicWisePerformance = new TopicWisePerformance(topicName, topicwiseNumberOfCorrectAns);
				topicPerfoList.add(topicWisePerformance);
			}
		} 
		catch (SQLServerException e) {
			e.printStackTrace();
		} 
		catch (SQLException e1) {
			e1.printStackTrace();
		} 
		
		return topicPerfoList;
	}
	
	public int getTestDetailID(int courseId) {
		int testDetailId = 0;
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
						
			String query = "SELECT TEST_DETAIL_ID FROM TEST_DETAILS WHERE TEST_NUMBER = 1 AND COURSE_ID = " + courseId;
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
}
