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
import com.winpoint.oes.util.sql.ConnectionManager;

public class StreamDao {

	public List<Stream> getStreamList() {
		
		List<Stream> streamList = new ArrayList<Stream>();
		
		ResultSet resultSet = null;
		
		try(Connection connection = ConnectionManager.getConnection()){
			Statement statement = connection.createStatement();
			
			String query = "SELECT STREAM_ID, STREAM_NAME FROM STREAMS";
			resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				int streamId = resultSet.getInt("stream_id");
				String streamName = resultSet.getString("stream_name");
				Stream stream = new Stream(streamId, streamName);
				streamList.add(stream);
			}
		} 
		catch (SQLServerException e) {
			e.printStackTrace();
		} 
		catch (SQLException e1) {
			e1.printStackTrace();
		} 
		return streamList;
		
	}
}
