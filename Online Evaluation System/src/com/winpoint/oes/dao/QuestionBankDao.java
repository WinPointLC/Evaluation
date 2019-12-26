package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import com.microsoft.sqlserver.jdbc.SQLServerException;
import com.winpoint.oes.beans.QuestionBank;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.util.sql.ConnectionManager;

public class QuestionBankDao {

	public void createQuestion(QuestionBank questionObj) {
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			String question = questionObj.getQuestion();
			
			String query = "INSERT INTO [dbo].[TECHNICAL_QUESTION_BANK]\r\n" + 
					"           ([COURSE_ID]\r\n" + 
					"           ,[TOPIC_ID]\r\n" + 
					"           ,[QUESTION]\r\n" + 
					"           ,[OPTION_1]\r\n" + 
					"           ,[OPTION_2]\r\n" + 
					"           ,[OPTION_3]\r\n" + 
					"           ,[OPTION_4]\r\n" + 
					"           ,[CORRECT_OPTION]\r\n" + 
					"           ,[MARKS]\r\n" + 
					"           ,[EXPLANATION]\r\n" + 
					"           ,[DIFFICULTY_LEVEL_ID]\r\n" + 
					"           ,[IN_CRT]\r\n" + 
					"     )VALUES\r\n" + 
					"           (" + questionObj.getCourseId() + "\r\n" + 
					"           ," + questionObj.getTopicId() + "\r\n" + 
					"           ,'" + question + "'\r\n" + 
					"           ,'" + questionObj.getOption1() + "'\r\n" + 
					"           ,'" + questionObj.getOption2() + "'\r\n" + 
					"           ,'" + questionObj.getOption3() + "'\r\n" + 
					"           ,'" + questionObj.getOption4() + "'\r\n" + 
					"           ,'" + questionObj.getCorrectOption() + "'\r\n" + 
					"           ," + questionObj.getTotalMarks() + "\r\n" + 
					"           ,'" + questionObj.getExplanation() + "'\r\n" + 
					"           ," + questionObj.getDifficultyLevelId() + "\r\n" + 
					"           ,'" + questionObj.getInCrt() + "')";
			System.out.println("Insert query is: \n" + query);
			statement.executeUpdate(query);
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<QuestionBank> getQuestionsList(int testdetailId) {
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
			query = "select question_id, \r\n" + 
					"		QUESTION,\r\n" + 
					"		OPTION_1, \r\n" + 
					"		OPTION_2, \r\n" + 
					"		OPTION_3, \r\n" + 
					"		OPTION_4, \r\n" + 
					"		CORRECT_OPTION,\r\n" + 
					"		MARKS,\r\n" + 
					"		tqb.TOPIC_ID,\r\n" + 
					"		TOPIC_NAME,\r\n" + 
					"		tqb.DIFFICULTY_LEVEL_ID\r\n" + 
					"		DIFFICULTY_LEVEL_NAME\r\n" + 
					"from TECHNICAL_QUESTION_BANK tqb Join TOPICS tp\r\n" + 
					"ON tqb.TOPIC_ID = tp.TOPIC_ID\r\n" + 
					"JOIN DIFFICULTY_LEVEL dl\r\n" + 
					"ON tqb.DIFFICULTY_LEVEL_ID = dl.DIFFICULTY_LEVEL_ID\r\n" + 
					"where QUESTION_ID in( select top (select IIF((select count(*) from TECHNICAL_QUESTION_BANK where COURSE_ID=1) > (select sum(NUMBER_OF_QUESTIONS) from TEST_DIFFICULTY where TEST_DETAIL_ID =" + testdetailId + ") , \r\n" + 
					"											  (select sum(NUMBER_OF_QUESTIONS) from TEST_DIFFICULTY where TEST_DETAIL_ID ="+ testdetailId +") , (select count(*) from TECHNICAL_QUESTION_BANK where COURSE_ID= " + currentCourseId +"))) QUESTION_ID\r\n" + 
					"					  from TECHNICAL_QUESTION_BANK tqb JOIN COURSES crs\r\n" + 
					"					  ON tqb.COURSE_ID = crs.COURSE_ID\r\n" + 
					"					  JOIN TOPICS tp\r\n" + 
					"					  ON tqb.TOPIC_ID = tp.TOPIC_ID\r\n" + 
					"					  JOIN DIFFICULTY_LEVEL dl\r\n" + 
					"					  ON tqb.DIFFICULTY_LEVEL_ID = dl.DIFFICULTY_LEVEL_ID\r\n" + 
					"					  JOIN TEST_DIFFICULTY td\r\n" + 
					"					  ON tqb.topic_id = td.topic_id\r\n" + 
					"					  where tqb.course_id = " + currentCourseId + " group by QUESTION_ID order by NEWID()\r\n" + 
					"					  )		";
			System.out.println("query from QuestionBankDao = " + query);
			resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				int questionId = resultSet.getInt("question_id");
				int courseId = currentCourseId;//resultSet.getInt("course_id");
				System.out.println("courseId from QuestionBankDao = " + currentCourseId);
				int topicId = resultSet.getInt("topic_id");
				String questionDescr = lineBreakCharsToHTMLBreak(resultSet.getString("question"));
				String questionDesc = spacesToHTMLSpaces(questionDescr);
				String option1 = resultSet.getString("OPTION_1");
				String option2 = resultSet.getString("OPTION_2");
				String option3 = resultSet.getString("OPTION_3");
				String option4 = resultSet.getString("OPTION_4");
				int marks = resultSet.getInt("MARKS");
				String correctOption = resultSet.getString("CORRECT_OPTION");
				int difficultyLevelId = 1;//resultSet.getInt("DIFFICULTY_LEVEL_ID");
				QuestionBank question = new QuestionBank(questionId, courseId, topicId, questionDesc, option1, option2, option3, option4, correctOption, marks, difficultyLevelId);
				questionsList.add(question);
			}
		} 
		catch (SQLServerException e) {
			e.printStackTrace();
		} 
		catch (SQLException e1) {
			e1.printStackTrace();
		} 
		return questionsList;
	}
	
	 public static String lineBreakCharsToHTMLBreak(String sourceString){
	        Pattern p =  Pattern.compile("[\\n\\r]");
	        return p.matcher(sourceString).replaceAll("<br>");
	 }
	 
	 public static String spacesToHTMLSpaces(String sourceString){
	        Pattern p =  Pattern.compile("[\\t\\ ]");
	        return p.matcher(sourceString).replaceAll("&nbsp");
	 }
}
