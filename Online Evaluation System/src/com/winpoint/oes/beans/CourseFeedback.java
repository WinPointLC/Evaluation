package com.winpoint.oes.beans;

import java.util.Date;

public class CourseFeedback {
	private Integer userId;
	private Integer courseId;
	private Integer feedbackId;
	private String studentResponse;
	private String markedForReview;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param userId
	 * @param courseId
	 * @param feedbackId
	 * @param response
	 * @param markedForReview
	 * @param createdBy
	 * @param createdDate
	 */
	public CourseFeedback(Integer userId, Integer courseId, Integer feedbackId, String studentResponse, String markedForReview,
			Integer createdBy, Date createdDate) {
		this.userId = userId;
		this.courseId = courseId;
		this.feedbackId = feedbackId;
		this.studentResponse = studentResponse;
		this.markedForReview = markedForReview;
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
	 * @return the feedbackId
	 */
	public Integer getFeedbackId() {
		return feedbackId;
	}
	
	/**
	 * @param feedbackId the feedbackId to set
	 */
	public void setFeedbackId(Integer feedbackId) {
		this.feedbackId = feedbackId;
	}
	
	/**
	 * @return the response
	 */
	public String getStudentResponse() {
		return studentResponse;
	}
	
	/**
	 * @param response the response to set
	 */
	public void setStudentResponse(String studentResponse) {
		this.studentResponse = studentResponse;
	}
	
	/**
	 * @return the markedForReview
	 */
	public String getMarkedForReview() {
		return markedForReview;
	}
	
	/**
	 * @param markedForReview the markedForReview to set
	 */
	public void setMarkedForReview(String markedForReview) {
		this.markedForReview = markedForReview;
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