package com.winpoint.oes.beans;

import java.util.Date;

/**
 * The class for calculating the Grades of the user as per his evaluation test for a course.
 */
public class GradingSystem {
	private String gradeId;
	private Integer marksLowerLimit;
	private Integer marksHigherLimit;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param gradeId
	 * @param marksLowerLimit
	 * @param marksHigherLimit
	 * @param createdBy
	 * @param createdDate
	 */
	public GradingSystem(String gradeId, Integer marksLowerLimit, Integer marksHigherLimit, Integer createdBy,
			Date createdDate) {
		super();
		this.gradeId = gradeId;
		this.marksLowerLimit = marksLowerLimit;
		this.marksHigherLimit = marksHigherLimit;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
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
	 * @return the marksLowerLimit
	 */
	public Integer getMarksLowerLimit() {
		return marksLowerLimit;
	}
	
	/**
	 * @param marksLowerLimit the marksLowerLimit to set
	 */
	public void setMarksLowerLimit(Integer marksLowerLimit) {
		this.marksLowerLimit = marksLowerLimit;
	}
	
	/**
	 * @return the marksHigherLimit
	 */
	public Integer getMarksHigherLimit() {
		return marksHigherLimit;
	}
	
	/**
	 * @param marksHigherLimit the marksHigherLimit to set
	 */
	public void setMarksHigherLimit(Integer marksHigherLimit) {
		this.marksHigherLimit = marksHigherLimit;
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
