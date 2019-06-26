package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;

public class LoginDao {
	public boolean login(String email, String password) {
		boolean flag = false;
		
		SQLServerDataSource dataSource = new SQLServerDataSource();
		dataSource.setUser("sa");
		dataSource.setPassword("winpoint");
		dataSource.setServerName("DESKTOP-EKU7G3D\\SQLEXPRESS");
		dataSource.setPortNumber(Integer.parseInt("1433"));
		dataSource.setDatabaseName("website");
		
		try(Connection connection = dataSource.getConnection()){
			Statement statement = connection.createStatement();
			
			String query = "select * from emp where ename = '" + email + "';";
			
			ResultSet resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				flag = true;
			}
		}
		catch (Exception e) {
			
		}
	    
		return flag;
	}
}
