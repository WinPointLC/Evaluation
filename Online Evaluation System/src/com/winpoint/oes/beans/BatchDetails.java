package com.winpoint.oes.beans;

import java.util.Date;

/**
 * The class to store the Batch details of each course at WinPoint.
 * @author Sanika Gandhe
 * 
 */
public class BatchDetails {
	private String batchId;
	private Integer courseId;	
	private Integer facultyId;
	private Date startDate;
	private Date endDate;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param batchId
	 * @param courseId
	 * @param faculty
	 * @param beginDate
	 * @param endDate
	 * @param createdBy
	 * @param createdDate
	 */
	public BatchDetails(String batchId, Integer courseId, Integer facultyId, Date startDate, Date endDate, Integer createdBy, Date createdDate) {
		this.batchId = batchId;
		this.courseId = courseId;
		this.facultyId = facultyId;
		this.startDate = startDate;
		this.endDate = endDate;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	
	/**
	 * @return the batchId of the batch.
	 */
	public String getBatchId() {
		return batchId;
	}
	
	/**
	 * @param batchId the batchId of the batch you want to set
	 */
	public void setBatchId(String batchId) {
		this.batchId = batchId;
	}
	
	/**
	 * @return the courseId of the course.
	 */
	public Integer getCourseId() {
		return courseId;
	}
	
	/**
	 * @param courseId the courseId of the course you want to set
	 */
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	
	/**
	 * @return the facultyId of the faculty.
	 */ 
	public Integer getFacultyId() {
		return facultyId;
	}
	
	/**
	 * @param facultyId of the faculty you want to set
	 */
	public void setFacultyId(Integer facultyId) {
		this.facultyId = facultyId;
	}
	
	/**
	 * @return the startDate of the batch.
	 */
	public Date getStartDate() {
		return startDate;
	}
	
	/**
	 * @param startDate the startDate of the batch you want to set
	 */
	public void setStartDate(Date beginDate) {
		this.startDate = beginDate;
	}
	
	/**
	 * @return the endDate of the batch
	 */
	public Date getEndDate() {
		return endDate;
	}
	
	/**
	 * @param endDate the endDate of the batch you want to set
	 */
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
	/**
	 * @return the createdBy the userId of the user which would reside in the session
	 */
	public Integer getCreatedBy() {
		return createdBy;
	}
	
	/**
	 * @param createdBy the userId of the user you want to set
	 */
	public void setCreatedBy(Integer createdBy) {
		this.createdBy = createdBy;
	}
	
	/**
	 * @return the createdDate which contains the timestamp of the batch
	 */
	public Date getCreatedDate() {
		return createdDate;
	}
	
	/**
	 * @param createdDate the timestamp of the batch you want to set
	 */
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
}
