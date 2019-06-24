package com.winpoint.oes.helpers.student;
import com.winpoint.oes.beans.UserProfile;

public class LoginHelper {
//String email;
//String password;

	public boolean validateLogin(String email, String password) {
		UserProfile userProfile = new UserProfile(null, null, null, email, null, null, null, null, null, null, null, null, password, null, null, null, null, null, null, null, null, null, null, null);
		return userProfile.login(email,password);	
	}	
	
	public static void main(String []args) {
		boolean flag;
		LoginHelper loginHelper = new LoginHelper();
		flag = loginHelper.validateLogin("san","123");
		if(flag==true) {
			System.out.println("login successful");
		}
		else {
			System.out.println("user not found");
		}
	}

}
