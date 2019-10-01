package com.winpoint.oes.beans;

public class Result {
	int courseId;
	String  courseName;
	int marks;
	int totalMarks;
	int numberOfCorrectAnswers;
	int numberOfAttempedQuestions;
	int numberOfTotalQuestions;
	
	public Result(int courseId, String courseName, int marks, int totalMarks, int numberOfCorrectAnswers,
			int numberOfAttempedQuestions, int numberOfTotalQuestions) {
		super();
		this.courseId = courseId;
		this.courseName = courseName;
		this.marks = marks;
		this.totalMarks = totalMarks;
		this.numberOfCorrectAnswers = numberOfCorrectAnswers;
		this.numberOfAttempedQuestions = numberOfAttempedQuestions;
		this.numberOfTotalQuestions = numberOfTotalQuestions;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public int getMarks() {
		return marks;
	}

	public void setMarks(int marks) {
		this.marks = marks;
	}

	public int getTotalMarks() {
		return totalMarks;
	}

	public void setTotalMarks(int totalMarks) {
		this.totalMarks = totalMarks;
	}

	public int getNumberOfCorrectAnswers() {
		return numberOfCorrectAnswers;
	}

	public void setNumberOfCorrectAnswers(int numberOfCorrectAnswers) {
		this.numberOfCorrectAnswers = numberOfCorrectAnswers;
	}

	public int getNumberOfAttempedQuestions() {
		return numberOfAttempedQuestions;
	}

	public void setNumberOfAttempedQuestions(int numberOfAttempedQuestions) {
		this.numberOfAttempedQuestions = numberOfAttempedQuestions;
	}

	public int getNumberOfTotalQuestions() {
		return numberOfTotalQuestions;
	}

	public void setNumberOfTotalQuestions(int numberOfTotalQuestions) {
		this.numberOfTotalQuestions = numberOfTotalQuestions;
	}	
}
