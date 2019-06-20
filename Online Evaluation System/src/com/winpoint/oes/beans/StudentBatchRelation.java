package com.winpoint.oes.beans;

public class StudentBatchRelation {
	private Integer userId;
	private Integer batchId;
	private Boolean feedbackGiven;
	private Boolean certificateGiven;
	private Integer courseAggr;
	private String gradeId;
	private String feeStatus;
	private Integer createdBy;
	private String createdDate;
	public Integer getUserId() {
		return userId;
	}
	
	public StudentBatchRelation(Integer userId, Integer batchId, Boolean feedbackGiven, Boolean certificateGiven,
			Integer courseAggr, String gradeId, String feeStatus, Integer createdBy, String createdDate) {
		super();
		this.userId = userId;
		this.batchId = batchId;
		this.feedbackGiven = feedbackGiven;
		this.certificateGiven = certificateGiven;
		this.courseAggr = courseAggr;
		this.gradeId = gradeId;
		this.feeStatus = feeStatus;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	

	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getBatchId() {
		return batchId;
	}
	public void setBatchId(Integer batchId) {
		this.batchId = batchId;
	}
	public Boolean getFeedbackGiven() {
		return feedbackGiven;
	}
	public void setFeedbackGiven(Boolean feedbackGiven) {
		this.feedbackGiven = feedbackGiven;
	}
	public Boolean getCertificateGiven() {
		return certificateGiven;
	}
	public void setCertificateGiven(Boolean certificateGiven) {
		this.certificateGiven = certificateGiven;
	}
	public Integer getCourseAggr() {
		return courseAggr;
	}
	public void setCourseAggr(Integer courseAggr) {
		this.courseAggr = courseAggr;
	}
	public String getGradeId() {
		return gradeId;
	}
	public void setGradeId(String gradeId) {
		this.gradeId = gradeId;
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
