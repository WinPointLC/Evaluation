package com.winpoint.oes.beans;

import java.util.Date;

public class TestDetails {
	private Integer testDetailId;
	private String userTestId;
	private Integer userId;
	private String testId;
	private String rulesDescription;
	private Integer marksReceived;
	private Integer noOfRegistration;
	private String feeStatus;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param userTestId
	 * @param userId
	 * @param testId
	 * @param marksReceived
	 * @param noOfRegistration
	 * @param feeStatus
	 * @param createdBy
	 * @param createdDate
	 */
	public TestDetails(String userTestId, Integer userId, String testId, Integer marksReceived,
			Integer noOfRegistration, String feeStatus, Integer createdBy, Date createdDate) {
		super();
		this.userTestId = userTestId;
		this.userId = userId;
		this.testId = testId;
		this.marksReceived = marksReceived;
		this.noOfRegistration = noOfRegistration;
		this.feeStatus = feeStatus;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	
	
	public Integer getTestDetailId() {
		return testDetailId;
	}


	public void setTestDetailId(Integer testDetailId) {
		this.testDetailId = testDetailId;
	}


	public String getRulesDescription() {
		return rulesDescription;
	}


	public void setRulesDescription(String rulesDescription) {
		this.rulesDescription = rulesDescription;
	}


	/**
	 * @return the userTestId
	 */
	public String getUserTestId() {
		return userTestId;
	}
	
	/**
	 * @param userTestId the userTestId to set
	 */
	public void setUserTestId(String userTestId) {
		this.userTestId = userTestId;
	}
	
	/**
	 * @return the userId
	 */
	public Integer getUserId() {
		return userId;
	}
	
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
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
	 * @return the marksReceived
	 */
	public Integer getMarksReceived() {
		return marksReceived;
	}
	
	/**
	 * @param marksReceived the marksReceived to set
	 */
	public void setMarksReceived(Integer marksReceived) {
		this.marksReceived = marksReceived;
	}
	
	/**
	 * @return the noOfRegistration
	 */
	public Integer getNoOfRegistration() {
		return noOfRegistration;
	}
	
	/**
	 * @param noOfRegistration the noOfRegistration to set
	 */
	public void setNoOfRegistration(Integer noOfRegistration) {
		this.noOfRegistration = noOfRegistration;
	}
	
	/**
	 * @return the feeStatus
	 */
	public String getFeeStatus() {
		return feeStatus;
	}
	
	/**
	 * @param feeStatus the feeStatus to set
	 */
	public void setFeeStatus(String feeStatus) {
		this.feeStatus = feeStatus;
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
