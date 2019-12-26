package com.winpoint.oes.helpers.common;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.beans.TestFeedback;
import com.winpoint.oes.dao.StreamDao;
import com.winpoint.oes.dao.TestFeedbackDao;

public class TestFeedbackHelper {
	public boolean insertTestFeedback(int userId, int courseId, List<TestFeedback> testFeedbackList){
		return new TestFeedbackDao().insertTestFeedback(userId, courseId, testFeedbackList);
	}
}
