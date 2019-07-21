package com.winpoint.oes.helpers.common;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.dao.Dummy;
import com.winpoint.oes.dao.LoginDao;

public class LoginHelper {

	public UserProfile validateLogin(String email, String password) {
		//user_id, first_name, mobile_number, email, password, photo, user_category_id, 
		//user_category_name, employee_category_name
		System.out.println("From Login Helper " + email + password);
		UserProfile userProfile = new LoginDao().login(email, password);
		if (userProfile != null)
		   System.out.println("User is " + userProfile.getUserCategoryId());
		/*ResultSet userProfileDetails = new LoginDao().login(email, password);
		int userId = 0;
		String firstName = null;
		String courseName = null;
		if (userProfileDetails!= null){
			try {
				userId = userProfileDetails.getInt("userid");
				firstName = userProfileDetails.getString("first_name");
				System.out.println("User Id = " + userId + "First Name = " + firstName);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("Exception from Helper" + e);
				//e.printStackTrace();
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
*/		return userProfile;
/*		}
		else
			return false;
*/	}
}
