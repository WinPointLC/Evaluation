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
import com.winpoint.oes.util.sql.ConnectionManager;

public class SecurityQuestionsDao {

	public List<SecurityQuestions> getSecurityQuestionsList() {
		
		List<SecurityQuestions> securityQuestionsList = new ArrayList<SecurityQuestions>();
		
		ResultSet resultSet = null;
		/*SQLServerDataSource dataSource = new SQLServerDataSource();
		dataSource.setUser("sa");
		dataSource.setPassword("winpoint");
		//dataSource.setServerName("SHRIRANGMHALGI\\SQLEXPRESS");
		dataSource.setPortNumber(Integer.parseInt("1433"));
		dataSource.setDatabaseName("OES_TESTING");*/

		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			
			String query = "SELECT  * from SECURITY_QUESTIONS";
			resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				//int ruleId = resultSet.getInt("rule_id");
				int securityQuestionId = resultSet.getInt("SECURITY_QUESTION_ID");
				String securityQuestion = resultSet.getString("SECURITY_QUESTION");
				SecurityQuestions secQuest = new SecurityQuestions(securityQuestionId, securityQuestion);
				securityQuestionsList.add(secQuest);
			}
		} catch (SQLServerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
		return securityQuestionsList;
		
	}
}
