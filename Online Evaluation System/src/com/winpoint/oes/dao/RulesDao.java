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
import com.winpoint.oes.beans.Stream;

public class RulesDao {

	public List<Rules> getRulesList(int testDetailId) {
		
		List<Rules> rulesList = new ArrayList<Rules>();
		
		ResultSet resultSet = null;
		SQLServerDataSource dataSource = new SQLServerDataSource();
		dataSource.setUser("sa");
		dataSource.setPassword("winpoint");
		dataSource.setServerName("SHRIRANGMHALGI\\SQLEXPRESS");
		dataSource.setPortNumber(Integer.parseInt("1433"));
		dataSource.setDatabaseName("OES_TESTING");

		try(Connection connection = dataSource.getConnection()){
			Statement statement = connection.createStatement();
			
			String query = "select  RULE_DESCRIPTION from TEST_DETAILS as TD\r\n" + 
					"outer apply string_split(TD.[RULES], ',') s\r\n" + 
					"JOIN dbo.RULES as R\r\n" + 
					"on R.RULE_ID = s.value\r\n" + 
					"where TEST_DETAIL_ID = " + testDetailId;
			resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				//int ruleId = resultSet.getInt("rule_id");
				String ruleDescription = resultSet.getString("rule_description");
				Rules rule = new Rules(ruleDescription);
				rulesList.add(rule);
			}
		} catch (SQLServerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
		return rulesList;
		
	}
}
