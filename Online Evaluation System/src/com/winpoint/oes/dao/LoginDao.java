package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;

public class LoginDao {
	public  void login(String email,String password) {
		SQLServerDataSource dataSource = new SQLServerDataSource();
		dataSource.setUser("sa");
		dataSource.setPassword("winpoint");
		dataSource.setServerName("DESKTOP-EKU7G3D\\SQLEXPRESS");
		dataSource.setPortNumber(Integer.parseInt("1433"));
		dataSource.setDatabaseName("website");
		
		try(Connection connection = dataSource.getConnection()){
			System.out.println("Success");	
			Statement 
			
		}
		catch (Exception e) {
		}
	
	}
}
