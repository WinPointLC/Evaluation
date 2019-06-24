package com.winpoint.oes.beans;

import java.util.Date;

public class StudentBatchDetails {
	private Integer userId;
	private Integer batchId;
	private String isFeedbackGiven;
	private String isCertificateGiven;
	private Integer courseAggr;
	private String gradeId;
	private String feeStatus;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param userId
	 * @param batchId
	 * @param isFeedbackGiven
	 * @param isCertificateGiven
	 * @param courseAggr
	 * @param gradeId
	 * @param feeStatus
	 * @param createdBy
	 * @param createdDate
	 */
	public StudentBatchDetails(Integer userId, Integer batchId, String isFeedbackGiven, String isCertificateGiven,
			Integer courseAggr, String gradeId, String feeStatus, Integer createdBy, Date createdDate) {
		super();
		this.userId = userId;
		this.batchId = batchId;
		this.isFeedbackGiven = isFeedbackGiven;
		this.isCertificateGiven = isCertificateGiven;
		this.courseAggr = courseAggr;
		this.gradeId = gradeId;
		this.feeStatus = feeStatus;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
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
	 * @return the batchId
	 */
	public Integer getBatchId() {
		return batchId;
	}
	
	/**
	 * @param batchId the batchId to set
	 */
	public void setBatchId(Integer batchId) {
		this.batchId = batchId;
	}
	
	/**
	 * @return the isFeedbackGiven
	 */
	public String getIsFeedbackGiven() {
		return isFeedbackGiven;
	}
	
	/**
	 * @param isFeedbackGiven the isFeedbackGiven to set
	 */
	public void setIsFeedbackGiven(String isFeedbackGiven) {
		this.isFeedbackGiven = isFeedbackGiven;
	}
	
	/**
	 * @return the isCertificateGiven
	 */
	public String getIsCertificateGiven() {
		return isCertificateGiven;
	}
	
	/**
	 * @param isCertificateGiven the isCertificateGiven to set
	 */
	public void setIsCertificateGiven(String isCertificateGiven) {
		this.isCertificateGiven = isCertificateGiven;
	}
	
	/**
	 * @return the courseAggr
	 */
	public Integer getCourseAggr() {
		return courseAggr;
	}
	
	/**
	 * @param courseAggr the courseAggr to set
	 */
	public void setCourseAggr(Integer courseAggr) {
		this.courseAggr = courseAggr;
	}
	
	/**
	 * @return the gradeId
	 */
	public String getGradeId() {
		return gradeId;
	}
	
	/**
	 * @param gradeId the gradeId to set
	 */
	public void setGradeId(String gradeId) {
		this.gradeId = gradeId;
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
