package com.winpoint.oes.helpers.common;

import java.util.Iterator;
import java.util.List;

import com.winpoint.oes.beans.QuestionBank;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.dao.QuestionBankDao;
import com.winpoint.oes.dao.StreamDao;

public class QuestionBankHelper {
	public List<QuestionBank> getQuestionsList(int testDetailId){
		return new QuestionBankDao().getQuestionsList(testDetailId);
	}
}
