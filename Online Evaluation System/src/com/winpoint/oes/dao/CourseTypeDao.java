package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import com.microsoft.sqlserver.jdbc.SQLServerException;
import com.winpoint.oes.beans.CourseType;
import com.winpoint.oes.beans.Test;
import com.winpoint.oes.util.sql.ConnectionManager;


public class CourseTypeDao {

	public List<CourseType> getCourseTypeList(int streamId) {
		
		List<CourseType> courseTypeList = new ArrayList<CourseType>();
		
		ResultSet resultSet = null;
		
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();

			String query = "SELECT COURSE_TYPE_ID, COURSE_TYPE.COURSE_TYPE_NAME \r\n" + 
					"		FROM COURSE_TYPE\r\n" + 
					"		WHERE COURSE_TYPE_ID IN\r\n" + 
					"		(SELECT COURSE_TYPE_ID FROM STREAM_COURSE_TYPE WHERE STREAM_ID = " + streamId + ")\r\n";
			resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				int courseTypeId = resultSet.getInt("COURSE_TYPE_ID");
				String courseTypeName = resultSet.getString("COURSE_TYPE_NAME");
				CourseType courseType = new CourseType(courseTypeId, courseTypeName);
				courseTypeList.add(courseType);
			}
		} 
		catch (SQLServerException e) {
			e.printStackTrace();
		} 
		catch (SQLException e1) {
			e1.printStackTrace();
		} 
		return courseTypeList;
		
	}

	public List<Test> getTestList(int userId, int courseId) {
		List<Test> testList = new ArrayList<Test>();
		
		ResultSet resultSet = null;

		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();

			String query = "SELECT \r\n" + 
					"		UTD.USER_ID,\r\n" + 
					"		CRS.COURSE_NAME,\r\n" + 
					"		EVAL.EVALUATION_TYPE_NAME,\r\n" + 
					"		TD.TEST_DETAIL_ID, \r\n" + 
					"		TD.TEST_FEES,\r\n" + 
					"		UTD.FEE_STATUS,\r\n" + 
					"		UTD.MARKS_RECEIVED,\r\n" +
					"		UTD.ATTEMPTED\r\n" +
					"		FROM\r\n" + 
					"		COURSES CRS JOIN EVALUATION_TYPE EVAL\r\n" + 
					"		ON EVAL.EVALUATION_TYPE_ID =  CRS.EVALUATION_TYPE_ID\r\n" + 
					"			JOIN TEST_DETAILS TD\r\n" + 
					"			ON CRS.COURSE_ID = TD.COURSE_ID\r\n" + 
					"				JOIN USER_TEST_DETAILS UTD\r\n" + 
					"				ON TD.TEST_DETAIL_ID = UTD.TEST_DETAIL_ID\r\n" + 
					"WHERE UTD.USER_ID = " + userId + "AND CRS.COURSE_ID = " + courseId ;
			resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				String courseName = resultSet.getString("COURSE_NAME");
				String evaluationTypeName = resultSet.getString("EVALUATION_TYPE_NAME");
				int testDetailId = resultSet.getInt("TEST_DETAIL_ID");
				int testFees = resultSet.getInt("TEST_FEES");
				int fee_status = resultSet.getInt("FEE_STATUS");
				int marksRceived = resultSet.getInt("MARKS_RECEIVED");
				int  attempted= resultSet.getInt("ATTEMPTED");
				Test test = new Test(userId, courseName, evaluationTypeName, testDetailId, testFees, fee_status, marksRceived, attempted);
				testList.add(test);
			}
		} 
		catch (SQLServerException e) {
			e.printStackTrace();
		} 
		catch (SQLException e1) {
			e1.printStackTrace();
		} 
		return testList;
	}
}
