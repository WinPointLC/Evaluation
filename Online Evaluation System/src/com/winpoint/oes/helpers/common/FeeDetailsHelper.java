package com.winpoint.oes.helpers.common;

import java.util.ArrayList;

import com.winpoint.oes.beans.StudentCourseFeesBean;
import com.winpoint.oes.dao.FeeDetailsDao;

public class FeeDetailsHelper {
	public ArrayList<StudentCourseFeesBean> getFeeDetails() {
		return new FeeDetailsDao().getFeeDetails();
	}
}
