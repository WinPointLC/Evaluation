package com.winpoint.oes.beans;

public class QuestionBank {
	private Integer qID;
	private Integer courseId;
	private String question;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String correctOption;
	private Integer totalMarks;
	private Integer topicId;
	private Integer difficultyLevelID;
	private Integer createdBy;
	private String createdDate;
	
	public QuestionBank(Integer qID, Integer courseId, String question, String option1, String option2, String option3,
			String option4, String correctOption, Integer totalMarks, Integer topicId, Integer difficultyLevelID,
			Integer createdBy, String createdDate) {
		super();
		this.qID = qID;
		this.courseId = courseId;
		this.question = question;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.correctOption = correctOption;
		this.totalMarks = totalMarks;
		this.topicId = topicId;
		this.difficultyLevelID = difficultyLevelID;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	public Integer getqID() {
		return qID;
	}
	public void setqID(Integer qID) {
		this.qID = qID;
	}
	public Integer getCourseId() {
		return courseId;
	}
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getOption1() {
		return option1;
	}
	public void setOption1(String option1) {
		this.option1 = option1;
	}
	public String getOption2() {
		return option2;
	}
	public void setOption2(String option2) {
		this.option2 = option2;
	}
	public String getOption3() {
		return option3;
	}
	public void setOption3(String option3) {
		this.option3 = option3;
	}
	public String getOption4() {
		return option4;
	}
	public void setOption4(String option4) {
		this.option4 = option4;
	}
	public String getCorrectOption() {
		return correctOption;
	}
	public void setCorrectOption(String correctOption) {
		this.correctOption = correctOption;
	}
	public Integer getTotalMarks() {
		return totalMarks;
	}
	public void setTotalMarks(Integer totalMarks) {
		this.totalMarks = totalMarks;
	}
	public Integer getTopicId() {
		return topicId;
	}
	public void setTopicId(Integer topicId) {
		this.topicId = topicId;
	}
	public Integer getDifficultyLevelID() {
		return difficultyLevelID;
	}
	public void setDifficultyLevelID(Integer difficultyLevelID) {
		this.difficultyLevelID = difficultyLevelID;
	}
	public Integer getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(Integer createdBy) {
		this.createdBy = createdBy;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	
	
}
