package com.winpoint.oes.helpers.common;

import java.util.Iterator;
import java.util.List;

import com.winpoint.oes.beans.Rules;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.dao.RulesDao;
import com.winpoint.oes.dao.StreamDao;

public class RulesHelper {
	public List<Rules> getRulesList(int testDetailId){
		List<Rules> rulesList = new RulesDao().getRulesList(testDetailId);
		Iterator<Rules> rulesIterator = rulesList.iterator();
		while(rulesIterator.hasNext()) {
			Rules rule = (Rules)rulesIterator.next();
			System.out.println("Rule Description = " + rule.getRulesDescription());
		}
		return rulesList;
	}
}
