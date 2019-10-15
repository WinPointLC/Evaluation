package com.winpoint.oes.helpers.common;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.winpoint.oes.beans.QuestionBank;
import com.winpoint.oes.beans.Result;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.beans.TestFeedback;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.dao.ResultDao;
import com.winpoint.oes.dao.StreamDao;
import com.winpoint.oes.dao.TestFeedbackDao;
import com.winpoint.oes.dao.UserProfileDao;

public class ResultHelper {
	public boolean updateStudentTestResponses(int userId, List<QuestionBank> questionsList, Integer[] answersList, Integer[] isCorrectList){
		return new ResultDao().updateStudentTestResponses(userId, questionsList, answersList, isCorrectList);
		
	}
	
	public boolean updateUserTestDetails(int userId, List<QuestionBank> questionsList, Result result) {
		return new ResultDao().updateUserTestDetails(userId, questionsList, result);
	}
}
