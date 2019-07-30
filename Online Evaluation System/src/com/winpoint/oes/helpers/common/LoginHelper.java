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
		/*UserProfile userProfile = new UserProfile(1, "Anjali", "Parkhi", "anjali.parkhi@winpointsolutions.com", 1, "/OnlineEvaluationSystem/img/photos/client/Knitting Balls.jpg");//new LoginDao().login(email, password);
		if (userProfile != null)
		   System.out.println("User is " + userProfile.getUserCategoryId());*/
		UserProfile userProfile = new LoginDao().validateLogin(email, password);
		int userId = 0;
		String firstName = null;
		String courseName = null;
		if (userProfile!= null){
			userId = userProfile.getUserId();
			firstName = userProfile.getFirstName();
			System.out.println("User Id = " + userId + "First Name = " + firstName);
			
		// course_name, test_number, number_of_registration, 
		// marks_received, attempt, is_modular
			/*ResultSet dashBoardDetails = new LoginDao().getDashboardDetails(userId);
			if(dashBoardDetails != null) {
				try {
					courseName = dashBoardDetails.getString("course_name");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}*/
		}
		return userProfile;
	}

	public UserProfile createLogin(UserProfile userProfile) {
		// TODO Auto-generated method stub
		return new LoginDao().createlogin(userProfile);
	}
}
