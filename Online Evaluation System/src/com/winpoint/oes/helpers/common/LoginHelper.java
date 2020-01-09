package com.winpoint.oes.helpers.common;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.dao.LoginDao;

public class LoginHelper {

	public UserProfile validateLogin(String email, String password) {
		UserProfile userProfile = new LoginDao().validateLogin(email, password);
		
		if(userProfile != null) {
			return userProfile;
		}
		return null;
	}

	public boolean changePassword(int userId, String password) {
		return new LoginDao().changePassword(userId, password);
	}
	
	public UserProfile getSecurityQuesAns(String email) {
		return new LoginDao().getSecurityQuesAns(email);
	}
	
	public UserProfile createLogin(UserProfile userProfile) {		
		return new LoginDao().createLogin(userProfile);
	}
}
