package com.winpoint.oes.beans;

import java.util.Date;

public class CourseType {
	private Integer courseTypeId;
	private String courseTypeName;
	private Integer createdBy;
	private Date createddDate;
	
	/**
	 * @param courseTypeId
	 * @param courseTypeName
	 * @param createdBy
	 * @param createdDate
	 */
	public CourseType(Integer courseTypeId, String courseTypeName, Integer createdBy, Date createdDate) {
		super();
		this.courseTypeId = courseTypeId;
		this.courseTypeName = courseTypeName;
		this.createdBy = createdBy;
		this.createddDate = createdDate;
	}
	
	public CourseType(int courseTypeId, String courseTypeName) {
		this.courseTypeId = courseTypeId;
		this.courseTypeName = courseTypeName;
	}

	/**
	 * @return the courseTypeId
	 */
	public Integer getCourseTypeId() {
		return courseTypeId;
	}
	
	/**
	 * @param courseTypeId the courseTypeId to set
	 */
	public void setCourseTypeId(Integer courseTypeId) {
		courseTypeId = courseTypeId;
	}
	
	/**
	 * @return the courseTypeName
	 */
	public String getCourseTypeName() {
		return courseTypeName;
	}
	
	/**
	 * @param courseTypeName the courseTypeName to set
	 */
	public void setCourseTypeName(String courseTypeName) {
		courseTypeName = courseTypeName;
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
		createdBy = createdBy;
	}
	
	/**
	 * @return the createdDate
	 */
	public Date getCreatedDate() {
		return createddDate;
	}
	
	/**
	 * @param createdDate the createdDate to set
	 */
	public void setCreatedDate(Date createdDate) {
		createddDate = createdDate;
	}
}
