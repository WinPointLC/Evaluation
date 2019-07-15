package com.winpoint.oes.helpers.common;

import com.winpoint.oes.dao.LoginDao;

public class LoginHelper {
	
	public boolean validateLogin(String email, String password) {		
		return new LoginDao().login(email, password);
	}
}
