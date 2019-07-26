package com.winpoint.oes.beans;

public class Test {
	private Integer userId;
	private String courseName;
	private String evaluationTypeName;
	private Integer testDetailId;
	private Integer testFees;
	private Boolean feeStatus;
	private Integer marksReceived;
	
	public Test(Integer userId, String courseName, String evaluationTypeName, Integer testDetailId, Integer testFees,
			Boolean feeStatus, Integer marksReceived) {
		super();
		this.userId = userId;
		this.courseName = courseName;
		this.evaluationTypeName = evaluationTypeName;
		this.testDetailId = testDetailId;
		this.testFees = testFees;
		this.feeStatus = feeStatus;
		this.marksReceived = marksReceived;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getEvaluationTypeName() {
		return evaluationTypeName;
	}
	public void setEvaluationTypeName(String evaluationTypeName) {
		this.evaluationTypeName = evaluationTypeName;
	}
	public Integer getTestDetailId() {
		return testDetailId;
	}
	public void setTestDetailId(Integer testDetailId) {
		this.testDetailId = testDetailId;
	}
	public Integer getTestFees() {
		return testFees;
	}
	public void setTestFees(Integer testFees) {
		this.testFees = testFees;
	}
	public Boolean getFeeStatus() {
		return feeStatus;
	}
	public void setFeeStatus(Boolean feeStatus) {
		this.feeStatus = feeStatus;
	}
	public Integer getMarksReceived() {
		return marksReceived;
	}
	public void setMarksReceived(Integer marksReceived) {
		this.marksReceived = marksReceived;
	}	
}
