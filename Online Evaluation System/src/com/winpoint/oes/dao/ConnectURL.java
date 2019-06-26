/*=====================================================================
File: 	 ConnectURL.java
Summary: This Microsoft JDBC Driver for SQL Server sample application
         demonstrates how to connect to a SQL Server database by using 
		 a connection URL. It also demonstrates how to retrieve data 
		 from a SQL Server database by using an SQL statement.
---------------------------------------------------------------------
This file is part of the Microsoft JDBC Driver for SQL Server Code Samples.
Copyright (C) Microsoft Corporation.  All rights reserved.
 
This source code is intended only as a supplement to Microsoft
Development Tools and/or on-line documentation.  See these other
materials for detailed information regarding Microsoft code samples.
 
THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF
ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
PARTICULAR PURPOSE.
=====================================================================*/
package com.winpoint.oes.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectURL {
	
	public boolean loginConnect(String email, String password) {
		boolean flag=false;
        String connectionUrl = "jdbc:sqlserver://DESKTOP-EKU7G3D\\SQLEXPRESS:1433;databaseName=website;user=sa;password=winpoint";
        PreparedStatement ps = null;
        ResultSet rs = null;

    try {
    	System.out.println("in jdbc");
    	System.out.println("email is: "+email);
        Connection con = DriverManager.getConnection(connectionUrl);
        Statement stmt = con.createStatement();
        
     	System.out.println("email is: "+email);

            String SQL = "select * from newtable where email='" + email +"';" ;
            //ResultSet rs = stmt.executeQuery(SQL);
            //ps = con.prepareStatement(SQL);
            rs = stmt.executeQuery(SQL);

            // Iterate through the data in the result set and display it.
           while (rs.next()) {
        	   System.out.println(rs.getString(1));
        	   System.out.println("Flag set true");
                //System.out.println(rs.getString("email"));// + " " + rs.getString("password"));
                flag= true;
            }
           
    }
    catch (Exception e) {
		// TODO: handle exception
	}
    System.out.println(flag);
     return flag;
      
    }

	
		
		
		
	}