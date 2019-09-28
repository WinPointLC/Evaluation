package com.winpoint.oes.helpers.common;

import java.util.ArrayList;
import java.util.Iterator;


import com.winpoint.oes.beans.StudentCourseDetails;

import com.winpoint.oes.dao.StudentCourseDetailsDao;

public class StudentCourseDetailsHelper {
	public ArrayList<StudentCourseDetails> getStudentCourseDetailsList(int userId){
		ArrayList<StudentCourseDetails> studentCourseDetailsList = new StudentCourseDetailsDao().getStudentCourseDetailsList(userId);
		Iterator<StudentCourseDetails> studentCourseDetailsIterator = studentCourseDetailsList.iterator();
		while(studentCourseDetailsIterator.hasNext()) {
			StudentCourseDetails studentCourseDetails = (StudentCourseDetails)studentCourseDetailsIterator.next();
		}
		return studentCourseDetailsList;
	}
}
