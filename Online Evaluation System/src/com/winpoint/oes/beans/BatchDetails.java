package com.winpoint.oes.beans;

import java.util.Date;

/**
 * The class to store the Batch details of each course at WinPoint.
 * @author SanikaGandhe
 * 
 */
public class BatchDetails {

	private String batchId;
	private Integer courseId;	
	private Integer faculty;
	private Date beginDate;
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
	public BatchDetails(String batchId, Integer courseId, Integer faculty, Date beginDate, Date endDate,
			Integer createdBy, Date createdDate) {
		super();
		this.batchId = batchId;
		this.courseId = courseId;
		this.faculty = faculty;
		this.beginDate = beginDate;
		this.endDate = endDate;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	
	/**
	 * @return the batchId
	 */
	public String getBatchId() {
		return batchId;
	}
	/**
	 * @param batchId the batchId to set
	 */
	public void setBatchId(String batchId) {
		this.batchId = batchId;
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
	 * @return the faculty
	 */
	public Integer getFaculty() {
		return faculty;
	}
	/**
	 * @param faculty the faculty to set
	 */
	public void setFaculty(Integer faculty) {
		this.faculty = faculty;
	}
	/**
	 * @return the beginDate
	 */
	public Date getBeginDate() {
		return beginDate;
	}
	/**
	 * @param beginDate the beginDate to set
	 */
	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}
	/**
	 * @return the endDate
	 */
	public Date getEndDate() {
		return endDate;
	}
	/**
	 * @param endDate the endDate to set
	 */
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
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
