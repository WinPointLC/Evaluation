package com.winpoint.oes.beans;

import java.util.Date;

public class Topic {
	private Integer courseId;
	private Integer topicId;
	private String topicName;
	private Integer minimumNoOfQuestionsForTest;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param courseId
	 * @param topicId
	 * @param topicName
	 * @param minimumNoOfQuestionsForTest
	 */
	public Topic(Integer topicId, Integer courseId, String topicName, Integer minimumNoOfQuestionsForTest) {
		super();
		this.courseId = courseId;
		this.topicId = topicId;
		this.topicName = topicName;
		this.minimumNoOfQuestionsForTest = minimumNoOfQuestionsForTest;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	
	/**
	 * @return the courseId
	 */
	public Integer getCourseId() {
		return courseId;
	}
	
	/**
	 * @param courseId the courseId to set
	 */
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	
	/**
	 * @return the topicId
	 */
	public Integer getTopicId() {
		return topicId;
	}
	
	/**
	 * @param topicId the topicId to set
	 */
	public void setTopicId(Integer topicId) {
		this.topicId = topicId;
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
	public Integer getMinimumNoOfQuestionsForTest() {
		return minimumNoOfQuestionsForTest;
	}
	
	/**
	 * @param minNoOfQuestionsForTest the minNoOfQuestionsForTest to set
	 */
	public void setMinimumNoOfQuestionsForTest(Integer minimumNoOfQuestionsForTest) {
		this.minimumNoOfQuestionsForTest = minimumNoOfQuestionsForTest;
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
	public Date getCreatedDate() {
		return createdDate;
	}
	
	/**
	 * @param createdDate the createdDate to set
	 */
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
}
