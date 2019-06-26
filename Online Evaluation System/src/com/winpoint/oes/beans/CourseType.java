package com.winpoint.oes.beans;

import java.util.Date;

public class CourseType {
	private Integer CourseTypeId;
	private String CourseTypeName;
	private Integer CreatedBy;
	private Date CreatedDate;
	
	/**
	 * @param courseTypeId
	 * @param courseTypeName
	 * @param createdBy
	 * @param createdDate
	 */
	public CourseType(Integer courseTypeId, String courseTypeName, Integer createdBy, Date createdDate) {
		super();
		CourseTypeId = courseTypeId;
		CourseTypeName = courseTypeName;
		CreatedBy = createdBy;
		CreatedDate = createdDate;
	}
	
	/**
	 * @return the courseTypeId
	 */
	public Integer getCourseTypeId() {
		return CourseTypeId;
	}
	
	/**
	 * @param courseTypeId the courseTypeId to set
	 */
	public void setCourseTypeId(Integer courseTypeId) {
		CourseTypeId = courseTypeId;
	}
	
	/**
	 * @return the courseTypeName
	 */
	public String getCourseTypeName() {
		return CourseTypeName;
	}
	
	/**
	 * @param courseTypeName the courseTypeName to set
	 */
	public void setCourseTypeName(String courseTypeName) {
		CourseTypeName = courseTypeName;
	}
	
	/**
	 * @return the createdBy
	 */
	public Integer getCreatedBy() {
		return CreatedBy;
	}
	
	/**
	 * @param createdBy the createdBy to set
	 */
	public void setCreatedBy(Integer createdBy) {
		CreatedBy = createdBy;
	}
	
	/**
	 * @return the createdDate
	 */
	public Date getCreatedDate() {
		return CreatedDate;
	}
	
	/**
	 * @param createdDate the createdDate to set
	 */
	public void setCreatedDate(Date createdDate) {
		CreatedDate = createdDate;
	}
}
