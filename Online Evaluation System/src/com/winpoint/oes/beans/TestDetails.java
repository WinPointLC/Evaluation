package com.winpoint.oes.beans;

public class TestDetails {
	private String userTestID;
	private Integer userID;
	private String testID;
	private Integer marksReceived;
	private Integer noOfRegistration;
	private String feeStatus;
	private Integer createdBy;
	private String createdDate;
	/**
	 * @param userTestID
	 * @param userID
	 * @param testID
	 * @param marksReceived
	 * @param noOfRegistration
	 * @param feeStatus
	 * @param createdBy
	 * @param createdDate
	 */
	public TestDetails(String userTestID, Integer userID, String testID, Integer marksReceived,
			Integer noOfRegistration, String feeStatus, Integer createdBy, String createdDate) {
		super();
		this.userTestID = userTestID;
		this.userID = userID;
		this.testID = testID;
		this.marksReceived = marksReceived;
		this.noOfRegistration = noOfRegistration;
		this.feeStatus = feeStatus;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	/**
	 * @return the userTestID
	 */
	public String getUserTestID() {
		return userTestID;
	}
	/**
	 * @param userTestID the userTestID to set
	 */
	public void setUserTestID(String userTestID) {
		this.userTestID = userTestID;
	}
	/**
	 * @return the userID
	 */
	public Integer getUserID() {
		return userID;
	}
	/**
	 * @param userID the userID to set
	 */
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	/**
	 * @return the testID
	 */
	public String getTestID() {
		return testID;
	}
	/**
	 * @param testID the testID to set
	 */
	public void setTestID(String testID) {
		this.testID = testID;
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
