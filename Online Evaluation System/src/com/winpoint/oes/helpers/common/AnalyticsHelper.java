package com.winpoint.oes.helpers.common;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.winpoint.oes.beans.TopicWisePerformance;
import com.winpoint.oes.beans.QuestionBank;
import com.winpoint.oes.beans.Result;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.beans.TestFeedback;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.dao.AnalyticsDao;
import com.winpoint.oes.dao.ResultDao;
import com.winpoint.oes.dao.StreamDao;
import com.winpoint.oes.dao.TestFeedbackDao;
import com.winpoint.oes.dao.UserProfileDao;

public class AnalyticsHelper {
	public ArrayList<TopicWisePerformance > getStudentTestAnalysis(int userId, int courseId){
		return new AnalyticsDao().getStudentTestAnalysis(userId, courseId);
	}
}
