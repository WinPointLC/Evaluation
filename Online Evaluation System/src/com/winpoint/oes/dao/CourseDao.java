package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import com.microsoft.sqlserver.jdbc.SQLServerException;
import com.winpoint.oes.beans.Course;


public class CourseDao {

	public List<Course> getCourseList(int streamId, int courseTypeId) {
		
		List<Course> courseList = new ArrayList<Course>();
		
		ResultSet resultSet = null;
		SQLServerDataSource dataSource = new SQLServerDataSource();
		dataSource.setUser("sa");
		dataSource.setPassword("winpoint");
		dataSource.setServerName("SHRIRANGMHALGI\\SQLEXPRESS");
		dataSource.setPortNumber(Integer.parseInt("1433"));
		dataSource.setDatabaseName("OES_TESTING");

		try(Connection connection = dataSource.getConnection()){
			Statement statement = connection.createStatement();
			
			String query = "SELECT\r\n" + 
					"	COURSES.COURSE_ID,\r\n" + 
					"	COURSES.COURSE_NAME\r\n" + 
					"	FROM \r\n" + 
					"	STREAM STREAM JOIN COURSES COURSES\r\n" + 
					"	ON STREAM.STREAM_ID = COURSES.STREAM_ID\r\n" + 
					"		JOIN COURSE_TYPE COURSE_TYPE\r\n" + 
					"		ON COURSES.COURSE_TYPE_ID = COURSE_TYPE.COURSE_TYPE_ID\r\n" + 
					"WHERE @stream_id = STREAM.STREAM_ID and @course_type_id = COURSE_TYPE.COURSE_TYPE_ID\r\n" + 
					"ORDER BY STREAM.STREAM_ID, COURSE_TYPE.COURSE_TYPE_ID, COURSES.COURSE_ID";
			resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				int courseId = resultSet.getInt("course_id");
				String courseName = resultSet.getString("course_name");
				String iconLocation = ""; //resultSet.getString("icon_location");
				Course course = new Course(courseId, courseName, streamId, courseTypeId, iconLocation);
				courseList.add(course);
			}
		} catch (SQLServerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
		return courseList;
		
	}
}
