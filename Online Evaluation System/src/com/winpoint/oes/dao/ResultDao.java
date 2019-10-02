package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.microsoft.sqlserver.jdbc.SQLServerException;
import com.winpoint.oes.beans.QuestionBank;
import com.winpoint.oes.beans.TestFeedback;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.util.sql.ConnectionManager;

public class ResultDao {
	public boolean updateStudentTestResponses(int userId, List<QuestionBank> questionsList, Integer[] answersList, Integer[] isCorrectList){
		
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			int testDetailId = 0;
			int userTestId = 0;
			Iterator<QuestionBank> iter = questionsList.iterator();
			QuestionBank firstQuestion = iter.next();
			int courseId = firstQuestion.getCourseId();
			String query = "SELECT TEST_DETAIL_ID FROM TEST_DETAILS WHERE TEST_NUMBER =1 AND COURSE_ID = " + courseId;
			ResultSet resultSet = statement.executeQuery(query);
			while(resultSet.next()) {
			   testDetailId = resultSet.getInt("TEST_DETAIL_ID");
			}
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
			System.out.println(tableName + "***" + answersList[0]);
			/*QuestionBank[] questionsListArr = (QuestionBank[])questionsList.toArray();
			Integer[] answersListArr = (Integer[])answersList.toArray();
			Integer[] isCorrectArr = (Integer[])isCorrectList.toArray();*/
			for(int i=0; i<questionsList.size(); i++){
				int ansStr = answersList[i].intValue();
				int isCorrStr = isCorrectList[i].intValue();
				//System.out.println("stud res = " + answersList.get(i));
				query = "INSERT INTO " + tableName +
						"           (USER_TEST_ID" + 
						"           ,Q_NUMBER" + 
						"           ,QUESTION_ID" +  
						"           ,STUDENT_RESPONSE" +
						"           ,IS_CORRECT" + ")" +
						"     VALUES" + 
						"           (" + userTestId + 
						"           ," + i +  
						"           ," + questionsList.get(i).getQuestionId() +
						"           ," + ansStr +
						"           ," + isCorrStr + ")";
				System.out.println(query);
				statement.executeUpdate(query);
			}
			/*PreparedStatement preparedStatement = connection.prepareStatement(
					"UPDATE USER_PROFILE SET FIRST_NAME = ?, LAST_NAME = ?,"
					+ "EMAIL_ID = ?, MOBILE_NUMBER = ?, ADDRESS = ?, BIRTHDATE = ?,"
					+ "COLLEGE = ?, DEGREE = ?, BRANCH = ?,YEAR_OF_GRADUATION = ?,"
					+ "PHOTO_LOCATION = ?, PASSWORD = ?, SECURITY_QUESTION_ID = ?,"
					+ "SECURITY_ANSWER = ?, USER_CATEGORY_ID = ?, OCCUPATION = ?,"
					+ "ORGANIZATION = ?, DESIGNATION = ?, DOMAIN = ? ROLE = ?, EXPERIENCE = ? where USER_ID = ?");
			
			preparedStatement.setString(1, userProfile.getFirstName());
			preparedStatement.setString(2, userProfile.getLastName());
			preparedStatement.setString(3, userProfile.getEmail());
			preparedStatement.setString(4, userProfile.getMobileNumber());
			preparedStatement.setString(5, userProfile.getAddress());
			java.sql.Date birthDate = new java.sql.Date(userProfile.getBirthDate().getTime());
			preparedStatement.setDate(6, birthDate);
			preparedStatement.setString(7, userProfile.getCollege());
			preparedStatement.setString(8, userProfile.getDegree());
			preparedStatement.setString(9, userProfile.getBranch());
			java.sql.Date yearOfGraduation = new java.sql.Date(userProfile.getYearOfGraduation().getTime());
			preparedStatement.setDate(10, yearOfGraduation);
			preparedStatement.setString(11, userProfile.getPhotoLocation());
			preparedStatement.setString(12, userProfile.getPassword());
			preparedStatement.setInt(13, userProfile.getSecurityQuestionId());
			preparedStatement.setString(14, userProfile.getSecurityAnswer());
			preparedStatement.setInt(15, userProfile.getUserCategoryId());
			preparedStatement.setString(16, userProfile.getOccupation());
			preparedStatement.setString(17, userProfile.getOrganisation());
			preparedStatement.setString(18, userProfile.getDesignation());
			preparedStatement.setString(19, userProfile.getDomain());
			preparedStatement.setString(20, userProfile.getRole());
			preparedStatement.setInt(21, userProfile.getExperience());
			preparedStatement.setInt(22, userProfile.getUserId());
			
			preparedStatement.executeUpdate();
			preparedStatement.close();*/
			
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
