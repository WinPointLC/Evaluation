package com.winpoint.oes.helpers.common;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.beans.TestFeedback;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.dao.StreamDao;
import com.winpoint.oes.dao.TestFeedbackDao;
import com.winpoint.oes.dao.UserProfileDao;

public class UserProfileHelper {
	public boolean updateUserProfile(UserProfile userProfile){
		return new UserProfileDao().updateUserProfile(userProfile);
	}
	
	public ArrayList<UserProfile> getUsers(){
		return new UserProfileDao().getUsers();
	}
	
	public String getCoursesList(Integer userId) {
		return new UserProfileDao().getCoursesList(userId);
	}
}
