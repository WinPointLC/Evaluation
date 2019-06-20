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
	public String getUserTestID() {
		return userTestID;
	}
	public void setUserTestID(String userTestID) {
		this.userTestID = userTestID;
	}
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	public String getTestID() {
		return testID;
	}
	public void setTestID(String testID) {
		this.testID = testID;
	}
	public Integer getMarksReceived() {
		return marksReceived;
	}
	public void setMarksReceived(Integer marksReceived) {
		this.marksReceived = marksReceived;
	}
	public Integer getNoOfRegistration() {
		return noOfRegistration;
	}
	public void setNoOfRegistration(Integer noOfRegistration) {
		this.noOfRegistration = noOfRegistration;
	}
	public String getFeeStatus() {
		return feeStatus;
	}
	public void setFeeStatus(String feeStatus) {
		this.feeStatus = feeStatus;
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
