package com.winpoint.oes.helpers.common;

public class LoginHelper {
	
	public boolean validateLogin(String email, String password) {		
		return new LoginDao().login(email, password);
	}
}
