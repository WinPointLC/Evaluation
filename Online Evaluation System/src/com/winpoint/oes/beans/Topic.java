package com.winpoint.oes.beans;

public class Topic {
	private Integer courseID;
	private Integer topicID;
	private String topicName;
	private Integer minNoOfQuestionsForTest;
	private Integer createdBy;
	private String createdDate;
	/**
	 * @param courseID
	 * @param topicID
	 * @param topicName
	 * @param minNoOfQuestionsForTest
	 * @param createdBy
	 * @param createdDate
	 */
	public Topic(Integer courseID, Integer topicID, String topicName, Integer minNoOfQuestionsForTest,
			Integer createdBy, String createdDate) {
		super();
		this.courseID = courseID;
		this.topicID = topicID;
		this.topicName = topicName;
		this.minNoOfQuestionsForTest = minNoOfQuestionsForTest;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	/**
	 * @return the courseID
	 */
	public Integer getCourseID() {
		return courseID;
	}
	/**
	 * @param courseID the courseID to set
	 */
	public void setCourseID(Integer courseID) {
		this.courseID = courseID;
	}
	/**
	 * @return the topicID
	 */
	public Integer getTopicID() {
		return topicID;
	}
	/**
	 * @param topicID the topicID to set
	 */
	public void setTopicID(Integer topicID) {
		this.topicID = topicID;
	}
	/**
	 * @return the topicName
	 */
	public String getTopicName() {
		return topicName;
	}
	/**
	 * @param topicName the topicName to set
	 */
	public void setTopicName(String topicName) {
		this.topicName = topicName;
	}
	/**
	 * @return the minNoOfQuestionsForTest
	 */
	public Integer getMinNoOfQuestionsForTest() {
		return minNoOfQuestionsForTest;
	}
	/**
	 * @param minNoOfQuestionsForTest the minNoOfQuestionsForTest to set
	 */
	public void setMinNoOfQuestionsForTest(Integer minNoOfQuestionsForTest) {
		this.minNoOfQuestionsForTest = minNoOfQuestionsForTest;
	}
	/**
	 * @return the createdBy
	 */
	public Integer getCreatedBy() {
		return createdBy;
	}
	/**
	 * @param createdBy the createdBy to set
	 */
	public void setCreatedBy(Integer createdBy) {
		this.createdBy = createdBy;
	}
	/**
	 * @return the createdDate
	 */
	public String getCreatedDate() {
		return createdDate;
	}
	/**
	 * @param createdDate the createdDate to set
	 */
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	
	
}
