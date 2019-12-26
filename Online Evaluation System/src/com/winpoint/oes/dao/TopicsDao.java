package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.microsoft.sqlserver.jdbc.SQLServerException;
import com.winpoint.oes.beans.Rules;
import com.winpoint.oes.beans.Topic;
import com.winpoint.oes.util.sql.ConnectionManager;

public class TopicsDao {

	public List<Topic> getTopicsList(int courseId) {
		List<Topic> topicsList = new ArrayList<Topic>();
		
		ResultSet resultSet = null;
		
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			
			String query = "SELECT * FROM TOPICS WHERE COURSE_ID = " + courseId;
			resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				int topicId = resultSet.getInt("topic_id");
				String topicName = resultSet.getString("topic_name");
				int minQues = resultSet.getInt("MINIMUM_NUMBER_OF_QUESTIONS_FOR_TEST");
				Topic topic = new Topic(topicId, courseId, topicName, minQues);
				topicsList.add(topic);
			}
		} 
		catch (SQLServerException e) {
			e.printStackTrace();
		} 
		catch (SQLException e1) {
			e1.printStackTrace();
		} 
		return topicsList;
	}
}
