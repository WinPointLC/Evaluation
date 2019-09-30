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
		List<Course> courseList = new CourseDao().getCourseList(streamId, courseTypeId);
		Iterator<Course> courseIterator = courseList.iterator();
		while(courseIterator.hasNext()) {
			Course course = (Course)courseIterator.next();
			System.out.println("Course Id = " + course.getStreamId() + ": Course Name = " + course.getCourseName());
		}
		return courseList;
	}

	public List<Test> getTestsList(int userId, int streamId, int courseTypeId, int courseId) {
		// TODO Auto-generated method stub
		List<Test> testList = new CourseDao().getTestList(userId, courseId);
		return testList;
	}
}
