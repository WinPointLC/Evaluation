package com.winpoint.oes.helpers.common;

import java.util.Iterator;
import java.util.List;

import com.winpoint.oes.beans.Rules;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.dao.RulesDao;
import com.winpoint.oes.dao.StreamDao;

public class RulesHelper {
	public List<Rules> getRulesList(){
		List<Rules> rulesList = new RulesDao().getRulesList();
		Iterator<Rules> rulesIterator = rulesList.iterator();
		while(rulesIterator.hasNext()) {
			Rules rule = (Rules)rulesIterator.next();
			System.out.println("Rules Id = " + rule.getRulesId() + ": Rule Description = " + rule.getRulesDescription());
		}
		return rulesList;
	}
}
