package com.winpoint.oes.helpers.student;
import com.winpoint.oes.beans.UserProfile;

public class LoginHelper {

	public void login(String email, String password) {
		UserProfile userProfile = new UserProfile(null, null, null, email, null, null, null, null, null, null, null, password, null, null, null, null, null, null, null, null, null, null, null);
		userProfile.login(email,password);
		
	}

}
