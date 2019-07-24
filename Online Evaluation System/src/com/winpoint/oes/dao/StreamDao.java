package com.winpoint.oes.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import com.microsoft.sqlserver.jdbc.SQLServerException;
import com.winpoint.oes.beans.Stream;

public class StreamDao {

	public List<Stream> getStreamList() {
		
		List<Stream> streamList = new ArrayList<Stream>();
		
		ResultSet resultSet = null;
		SQLServerDataSource dataSource = new SQLServerDataSource();
		dataSource.setUser("sa");
		dataSource.setPassword("winpoint");
		dataSource.setServerName("SHRIRANGMHALGI\\SQLEXPRESS");
		dataSource.setPortNumber(Integer.parseInt("1433"));
		dataSource.setDatabaseName("OES_TESTING");

		try(Connection connection = dataSource.getConnection()){
			Statement statement = connection.createStatement();
			
			String query = "SELECT STREAM_ID, STREAM_NAME FROM STREAM";
			resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				int streamId = resultSet.getInt("stream_id");
				String streamName = resultSet.getString("stream_name");
				Stream stream = new Stream(streamId, streamName);
				streamList.add(stream);
			}
		} catch (SQLServerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
		return streamList;
		
	}
}
