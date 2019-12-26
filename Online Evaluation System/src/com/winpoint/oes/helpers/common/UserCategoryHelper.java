package com.winpoint.oes.helpers.common;

import java.util.List;

import com.winpoint.oes.beans.UserCategory;
import com.winpoint.oes.dao.UserCategoryDao;

public class UserCategoryHelper {

	public List<UserCategory> getUserCategoryList() {
		return new UserCategoryDao().getUserCategoryList();
	}

}
