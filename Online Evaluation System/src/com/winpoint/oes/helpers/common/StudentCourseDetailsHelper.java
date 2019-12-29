package com.winpoint.oes.helpers.common;

import java.util.ArrayList;
import java.util.Iterator;


import com.winpoint.oes.beans.StudentCourseDetails;

import com.winpoint.oes.dao.StudentCourseDetailsDao;

public class StudentCourseDetailsHelper {
	public ArrayList<StudentCourseDetails> getStudentCourseDetailsList(int userId){
		return new StudentCourseDetailsDao().getStudentCourseDetailsList(userId);
	}
	
	public ArrayList<StudentCourseDetails> getStudentGACourseDetailsList(int userId){
		return new StudentCourseDetailsDao().getStudentGACourseDetailsList(userId);
	}

	public void createStudentCourseDetails(int userId, int courseId, String courseName, int streamId, int courseTypeId, String feeStatus) {
		new StudentCourseDetailsDao().createStudentCourseDetails(userId, courseId, courseName, streamId, feeStatus);
	}
	
	public void updateStudentCourseDetails(int userId, int courseId) {
		new StudentCourseDetailsDao().updateStudentCourseDetails(userId, courseId);
	}
}
