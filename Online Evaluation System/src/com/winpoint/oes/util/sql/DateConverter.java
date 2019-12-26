package com.winpoint.oes.util.sql;

public class DateConverter {
	
	public static java.sql.Date convertUtilToSqlDate(java.util.Date date) {
		if(date != null) {
			return new java.sql.Date(date.getTime());
		}
		return null;
	}
	
	public static java.util.Date convertSqlToUtilDate(java.sql.Date date) {
		if(date != null) {
			return new java.util.Date(date.getTime());
		}
		return null;
	}
	
}
