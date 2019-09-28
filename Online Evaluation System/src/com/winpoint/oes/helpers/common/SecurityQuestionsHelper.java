package com.winpoint.oes.helpers.common;

import java.util.Iterator;
import java.util.List;

import com.winpoint.oes.beans.Rules;
import com.winpoint.oes.beans.SecurityQuestions;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.dao.RulesDao;
import com.winpoint.oes.dao.SecurityQuestionsDao;
import com.winpoint.oes.dao.StreamDao;

public class SecurityQuestionsHelper {
	public List<SecurityQuestions> getSecurityQuestionsList(){
		List<SecurityQuestions> securityQuestionsList = new SecurityQuestionsDao().getSecurityQuestionsList();
		Iterator<SecurityQuestions> rulesIterator = securityQuestionsList.iterator();
		while(rulesIterator.hasNext()) {
			SecurityQuestions securityQuestions = (SecurityQuestions)rulesIterator.next();
			System.out.println("SecurityQuestion = " + securityQuestions.getSecurityQuestion());
		}
		return securityQuestionsList;
	}
}
