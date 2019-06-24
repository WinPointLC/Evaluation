package com.winpoint.oes.beans;

import java.util.Date;

public class TestDifficulty {
	private String testId;
	private Integer topicId;
	private Integer difficultyLevelId;
	private Integer numberOfQuestions;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param testId
	 * @param topicId
	 * @param difficultyLevelId
	 * @param numberOfQuestions
	 * @param createdBy
	 * @param createdDate
	 */
	public TestDifficulty(String testId, Integer topicId, Integer difficultyLevelId, Integer numberOfQuestions,
			Integer createdBy, Date createdDate) {
		super();
		this.testId = testId;
		this.topicId = topicId;
		this.difficultyLevelId = difficultyLevelId;
		this.numberOfQuestions = numberOfQuestions;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	
	/**
	 * @return the testId
	 */
	public String getTestId() {
		return testId;
	}
	
	/**
	 * @param testId the testId to set
	 */
	public void setTestId(String testId) {
		this.testId = testId;
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
	 * @return the difficultyLevelId
	 */
	public Integer getDifficultyLevelId() {
		return difficultyLevelId;
	}
	
	/**
	 * @param difficultyLevelId the difficultyLevelId to set
	 */
	public void setDifficultyLevelId(Integer difficultyLevelId) {
		this.difficultyLevelId = difficultyLevelId;
	}
	
	/**
	 * @return the numberOfQuestions
	 */
	public Integer getNumberOfQuestions() {
		return numberOfQuestions;
	}
	
	/**
	 * @param numberOfQuestions the numberOfQuestions to set
	 */
	public void setNumberOfQuestions(Integer numberOfQuestions) {
		this.numberOfQuestions = numberOfQuestions;
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
