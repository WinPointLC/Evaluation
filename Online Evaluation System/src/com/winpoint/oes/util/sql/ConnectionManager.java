package com.winpoint.oes.util.sql;

import java.sql.Connection;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import com.microsoft.sqlserver.jdbc.SQLServerException;

public class ConnectionManager {
	//private Connection connection = null;

	public static Connection getConnection() {
		Connection connection = null;
		SQLServerDataSource dataSource = new SQLServerDataSource();
		dataSource.setUser("sa");
		dataSource.setPassword("winpoint");
//		dataSource.setServerName("SHRIRANGMHALGI\\SQLEXPRESS");
//		dataSource.setServerName("DESKTOP-8PA8OIH");
		dataSource.setServerName("DESKTOP-ARN90J1");
		dataSource.setPortNumber(Integer.parseInt("1433"));
		dataSource.setDatabaseName("OES_TESTING");
		try {
			connection = dataSource.getConnection();
		} catch (SQLServerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	/*public void setConnection(Connection connection) {
		this.connection = connection;
	}*/
	
	
}
