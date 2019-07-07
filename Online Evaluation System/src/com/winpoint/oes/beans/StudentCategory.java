package com.winpoint.oes.beans;

import java.util.Date;

public class StudentCategory {
	
	private String studentCategoryId;
	private String studentCategoryName;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param studentCategoryId
	 * @param studentCategoryName
	 * @param createdBy
	 * @param createdDate
	 */
	public StudentCategory(String studentCategoryId, String studentCategoryName, Integer createdBy, Date createdDate) {
		super();
		this.studentCategoryId = studentCategoryId;
		this.studentCategoryName = studentCategoryName;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	
	/**
	 * @return the studentCategoryId
	 */
	public String getStudentCategoryId() {
		return studentCategoryId;
	}
	
	/**
	 * @param studentCategoryId the studentCategoryId to set
	 */
	public void setStudentCategoryId(String studentCategoryId) {
		this.studentCategoryId = studentCategoryId;
	}
	
	/**
	 * @return the studentCategoryName
	 */
	public String getStudentCategoryName() {
		return studentCategoryName;
	}
	
	/**
	 * @param studentCategoryName the studentCategoryName to set
	 */
	public void setStudentCategoryName(String studentCategoryName) {
		this.studentCategoryName = studentCategoryName;
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
