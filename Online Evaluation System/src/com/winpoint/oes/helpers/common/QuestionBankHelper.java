package com.winpoint.oes.helpers.common;

import java.util.Iterator;
import java.util.List;

import com.winpoint.oes.beans.QuestionBank;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.dao.QuestionBankDao;
import com.winpoint.oes.dao.StreamDao;

public class QuestionBankHelper {
	public List<QuestionBank> getQuestionsList(int testDetailId){
		List<QuestionBank> questionsList = new QuestionBankDao().getQuestionsList(testDetailId);
		if(questionsList != null) {
			Iterator<QuestionBank> questionsIterator = questionsList.iterator();
			while(questionsIterator.hasNext()) {
				QuestionBank stream = (QuestionBank)questionsIterator.next();
				System.out.println("Question Id = " + stream.getQuestionId() + ": Stream Name = " + stream.getQuestion());
			}
		}
		return questionsList;
	}
}
