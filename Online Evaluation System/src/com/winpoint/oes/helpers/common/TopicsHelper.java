package com.winpoint.oes.helpers.common;

import java.util.List;

import com.winpoint.oes.beans.Topic;
import com.winpoint.oes.dao.TopicsDao;

public class TopicsHelper {

	public List<Topic> getTopicsList(int courseId) {
		return new TopicsDao().getTopicsList(courseId);
	}
}
