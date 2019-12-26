package com.winpoint.oes.helpers.common;

import java.util.Iterator;
import java.util.List;

import com.winpoint.oes.beans.Course;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.beans.Test;
import com.winpoint.oes.dao.CourseDao;
import com.winpoint.oes.dao.StreamDao;

public class CourseHelper {
	public List<Course> getCourseList(int streamId, int courseTypeId){
		return new CourseDao().getCourseList(streamId, courseTypeId);
	}

	public List<Test> getTestsList(int userId, int streamId, int courseTypeId, int courseId) {
		return new CourseDao().getTestList(userId, courseId);
	}
}
