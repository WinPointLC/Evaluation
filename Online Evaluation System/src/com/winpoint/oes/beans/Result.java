package com.winpoint.oes.beans;

public class Result {
	private int courseId;
	private String  courseName;
	private int marks;
	private int totalMarks;
	private int numberOfCorrectAnswers;
	private int numberOfAttempedQuestions;
	private int numberOfTotalQuestions;
	private int hours;
	private int minutes;
	private int seconds;
	
	public Result(int courseId, String courseName, int marks, int totalMarks, int numberOfCorrectAnswers,
			int numberOfAttempedQuestions, int numberOfTotalQuestions, int hours, int minutes, int seconds) {
		super();
		this.courseId = courseId;
		this.courseName = courseName;
		this.marks = marks;
		this.totalMarks = totalMarks;
		this.numberOfCorrectAnswers = numberOfCorrectAnswers;
		this.numberOfAttempedQuestions = numberOfAttempedQuestions;
		this.numberOfTotalQuestions = numberOfTotalQuestions;
		this.hours = hours;
		this.minutes = minutes;
		this.seconds = seconds;
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

	public int getHours() {
		return hours;
	}

	public void setHours(int hours) {
		this.hours = hours;
	}

	public int getMinutes() {
		return minutes;
	}

	public void setMinutes(int minutes) {
		this.minutes = minutes;
	}

	public int getSeconds() {
		return seconds;
	}

	public void setSeconds(int seconds) {
		this.seconds = seconds;
	}	
}
