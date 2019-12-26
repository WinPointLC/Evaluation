package com.winpoint.oes.beans;

public class Test {
	private Integer userId;
	private String courseName;
	private String evaluationTypeName;
	private Integer testDetailId;
	private Integer testFees;
	private int feeStatus;
	private Integer marksReceived;
	private Integer attempted;
	
	public Test(Integer userId, String courseName, String evaluationTypeName, Integer testDetailId, Integer testFees,
			int fee_status, Integer marksReceived, Integer attempted) {
		super();
		this.userId = userId;
		this.courseName = courseName;
		this.evaluationTypeName = evaluationTypeName;
		this.testDetailId = testDetailId;
		this.testFees = testFees;
		this.feeStatus = fee_status;
		this.marksReceived = marksReceived;
		this.attempted = attempted;
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
	
	public int getFeeStatus() {
		return feeStatus;
	}
	
	public void setFeeStatus(int feeStatus) {
		this.feeStatus = feeStatus;
	}
	
	public Integer getMarksReceived() {
		return marksReceived;
	}
	
	public void setMarksReceived(Integer marksReceived) {
		this.marksReceived = marksReceived;
	}
	
	public Integer getAttempted() {
		return attempted;
	}
	
	public void setAttempted(Integer attempted) {
		this.attempted = attempted;
	}
}
