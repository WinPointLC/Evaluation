package com.winpoint.oes.beans;

public class Topic {
	private Integer topicID;
	private Integer courseID;
	private String topicName;
	private Integer minNoOfQuestionsForTest;
	private Integer createdBy;
	private String createdDate;
	
	
	public Topic(Integer topicID, Integer courseID, String topicName, Integer minNoOfQuestionsForTest,
			Integer createdBy, String createdDate) {
		super();
		this.topicID = topicID;
		this.courseID = courseID;
		this.topicName = topicName;
		this.minNoOfQuestionsForTest = minNoOfQuestionsForTest;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	public Integer getTopicID() {
		return topicID;
	}
	public void setTopicID(Integer topicID) {
		this.topicID = topicID;
	}
	public Integer getCourseID() {
		return courseID;
	}
	public void setCourseID(Integer courseID) {
		this.courseID = courseID;
	}
	public String getTopicName() {
		return topicName;
	}
	public void setTopicName(String topicName) {
		this.topicName = topicName;
	}
	public Integer getMinNoOfQuestionsForTest() {
		return minNoOfQuestionsForTest;
	}
	public void setMinNoOfQuestionsForTest(Integer minNoOfQuestionsForTest) {
		this.minNoOfQuestionsForTest = minNoOfQuestionsForTest;
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
