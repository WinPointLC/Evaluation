package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;

public class LoginDao {
	public boolean login(String emailPara, String passwordPara) {
		boolean flag = false;
		
		SQLServerDataSource dataSource = new SQLServerDataSource();
		dataSource.setUser("sa");
		dataSource.setPassword("winpoint");
		dataSource.setServerName("DESKTOP-EKU7G3D\\SQLEXPRESS");
		dataSource.setPortNumber(Integer.parseInt("1433"));
		dataSource.setDatabaseName("website");
		
		try(Connection connection = dataSource.getConnection()){
			Statement statement = connection.createStatement();
			
			String query = "select * from new where email = '" + emailPara + "';";
			
			ResultSet resultSet = statement.executeQuery(query);
			while(resultSet.next()) {
				//String name = resultSet.getString("email");
				//String pass = resultSet.getString("password");
			
	           
	            //System.out.println(name);
	            //System.out.println(pass);
	            //Dummy d = new Dummy(name,pass);
	            
				flag = true;
				
			}
			
		}
		catch (Exception e) {
			
		}
		//System.out.println("Password= "+ passwo);
	    System.out.println("flag =" + flag);
		return flag;
	    
	}
}
