package com.winpoint.oes.dao;

public class LoginDao {
	public boolean login(String email,String password) {
		System.out.println("in login dao");
	ConnectURL connectURL = new ConnectURL();
	return connectURL.loginConnect(email,password);
	

	}


}
