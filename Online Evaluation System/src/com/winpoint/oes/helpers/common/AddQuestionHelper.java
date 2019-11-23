package com.winpoint.oes.helpers.common;

import com.winpoint.oes.beans.QuestionBank;
import com.winpoint.oes.dao.QuestionBankDao;

public class AddQuestionHelper {

	public void createQuestion(QuestionBank questionObj) {
		// TODO Auto-generated method stub
		new QuestionBankDao().createQuestion(questionObj);
	}

}
