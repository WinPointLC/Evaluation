package com.winpoint.oes.helpers.common;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.winpoint.oes.dao.Dummy;
import com.winpoint.oes.dao.LoginDao;

public class LoginHelper {

	public boolean validateLogin(String email, String password) {
		//user_id, first_name, mobile_number, email, password, photo, user_category_id, 
		//user_category_name, employee_category_name
		ResultSet userProfileDetails = new LoginDao().login(email, password);
		int userId = 0;
		String firstName = null;
		String courseName = null;
		if (userProfileDetails!= null){
			try {
				userId = userProfileDetails.getInt("user_id");
				firstName = userProfileDetails.getString("first_name");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		// course_name, test_number, number_of_registration, 
		// marks_received, attempt, is_modular
			ResultSet dashBoardDetails = new LoginDao().getDashboardDetails(userId);
			if(dashBoardDetails != null) {
				try {
					courseName = dashBoardDetails.getString("course_name");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return true;
		}
		else
			return true;
	}
}
