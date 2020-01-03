package com.winpoint.oes.helpers.common;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;

import com.winpoint.oes.beans.FeedbackQuestions;
import com.winpoint.oes.beans.QuestionBank;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.dao.FeedbackQuestionsDao;
import com.winpoint.oes.dao.QuestionBankDao;
import com.winpoint.oes.dao.StreamDao;

public class FeedbackQuestionsHelper {
	public ArrayList<FeedbackQuestions> getFeedbackQuestions(){
		return new FeedbackQuestionsDao().getFeedbackQuestions();
	}
}
