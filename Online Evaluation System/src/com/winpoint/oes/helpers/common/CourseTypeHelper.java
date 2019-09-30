package com.winpoint.oes.helpers.common;

import java.util.Iterator;
import java.util.List;

import com.winpoint.oes.beans.Course;
import com.winpoint.oes.beans.CourseType;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.beans.Test;
import com.winpoint.oes.dao.CourseDao;
import com.winpoint.oes.dao.CourseTypeDao;
import com.winpoint.oes.dao.StreamDao;

public class CourseTypeHelper {
	public List<CourseType> getCourseTypeList(int streamId){
		List<CourseType> courseTypeList = new CourseTypeDao().getCourseTypeList(streamId);
		Iterator<CourseType> courseTypeIterator = courseTypeList.iterator();
		while(courseTypeIterator.hasNext()) {
			CourseType courseType = (CourseType)courseTypeIterator.next();
			System.out.println("CourseType Id = " + courseType.getCourseTypeId() + ": CourseType Name = " + courseType.getCourseTypeName());
		}
		return courseTypeList;
	}

	public List<Test> getTestsList(int userId, int streamId, int courseTypeId, int courseId) {
		// TODO Auto-generated method stub
		List<Test> testList = new CourseDao().getTestList(streamId, courseTypeId);
		return testList;
	}
}
