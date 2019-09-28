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
import com.winpoint.oes.beans.SecurityQuestions;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.beans.StudentCourseDetails;
import com.winpoint.oes.util.sql.ConnectionManager;

public class StudentCourseDetailsDao {

	public ArrayList<StudentCourseDetails> getStudentCourseDetailsList(int userId) {
		
		ArrayList<StudentCourseDetails> studentCourseDetailsList = new ArrayList<>();
		
		ResultSet resultSet = null;
		
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			
			String query = "SELECT STREAMS.STREAM_NAME, \r\n" + 
					"		COURSE_TYPE.COURSE_TYPE_NAME, \r\n" + 
					"		COURSES.COURSE_ID, COURSES.COURSE_NAME, COURSES.LOGO_LOCATION, \r\n" + 
					"		STUDENT_COURSE_DETAILS.COURSE_AGGR\r\n" + 
					"FROM STREAMS JOIN COURSES \r\n" + 
					"	ON STREAMS.STREAM_ID =  COURSES.STREAM_ID\r\n" + 
					"		LEFT OUTER JOIN COURSE_TYPE \r\n" + 
					"		ON COURSE_TYPE.COURSE_TYPE_ID = COURSES.COURSE_TYPE_ID\r\n" + 
					"		LEFT OUTER JOIN STUDENT_COURSE_DETAILS \r\n" + 
					"		ON COURSES.COURSE_ID = STUDENT_COURSE_DETAILS.COURSE_ID\r\n" + 
					"WHERE COURSES.COURSE_ID IN \r\n" + 
					"	(SELECT STUDENT_COURSE_DETAILS.COURSE_ID FROM STUDENT_COURSE_DETAILS where STUDENT_COURSE_DETAILS.USER_ID=" + userId + ")";
			resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				//int ruleId = resultSet.getInt("rule_id");
				int courseId = resultSet.getInt("COURSE_ID");
				String courseName = resultSet.getString("COURSE_NAME");
				String logoLocation = resultSet.getString("LOGO_LOCATION"); 
				String courseTypeName = resultSet.getString("COURSE_TYPE_NAME");
				String streamName = resultSet.getString("STREAM_NAME");
				int courseAggr = resultSet.getInt("COURSE_AGGR");
				StudentCourseDetails secQuest = new StudentCourseDetails(userId, courseId, courseName, logoLocation, courseTypeName, streamName, courseAggr);
				studentCourseDetailsList.add(secQuest);
			}
		} catch (SQLServerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
		return studentCourseDetailsList;
		
	}
}