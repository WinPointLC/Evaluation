package com.winpoint.oes.beans;

public class GradingSystem {
	/**
	 * The class for calculating the Grades of the user as per his evaluation test for a course.
	 */
	private Integer gradeId;
	private Integer marksLowerLimit;
	private Integer marksHigherLimit;
	private Integer createdBy;
	private String createdDate;
	
	/**
	 * @param gradeId
	 * @param marksLowerLimit
	 * @param marksHigherLimit
	 * @param createdBy
	 * @param createdDate
	 */
	
	public GradingSystem(Integer gradeId, Integer marksLowerLimit, Integer marksHigherLimit, Integer createdBy,
			String createdDate) {
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
	public Integer getGradeId() {
		return gradeId;
	}
	/**
	 * @param gradeId the gradeId to set
	 */
	public void setGradeId(Integer gradeId) {
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
