package com.winpoint.oes.helpers.common;

import java.util.List;

import com.winpoint.oes.beans.DifficultyLevel;
import com.winpoint.oes.dao.DifficultyLevelDao;

public class DifficultyLevelHelper {

	public List<DifficultyLevel> getDifficultyLevelsList() {
		return new DifficultyLevelDao().getDifficultyLevelsList();
	}

}
