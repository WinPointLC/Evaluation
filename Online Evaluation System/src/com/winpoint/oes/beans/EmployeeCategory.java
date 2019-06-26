package com.winpoint.oes.beans;

import java.util.Date;

/**
 * Stores the Category of the employee, including the ID and Category name.
 */
public class EmployeeCategory {
	private Integer employeeCategoryId;
	private String employeeCategoryName;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param employeeCategoryId
	 * @param employeeCategoryName
	 * @param createdBy
	 * @param createdDate
	 */
	public EmployeeCategory(Integer employeeCategoryId, String employeeCategoryName, Integer createdBy,
			Date createdDate) {
		super();
		this.employeeCategoryId = employeeCategoryId;
		this.employeeCategoryName = employeeCategoryName;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	
	/**
	 * @return the employeeCategoryId
	 */
	public Integer getEmployeeCategoryId() {
		return employeeCategoryId;
	}
	
	/**
	 * @param employeeCategoryId the employeeCategoryId to set
	 */
	public void setEmployeeCategoryId(Integer employeeCategoryId) {
		this.employeeCategoryId = employeeCategoryId;
	}
	
	/**
	 * @return the employeeCategoryName
	 */
	public String getEmployeeCategoryName() {
		return employeeCategoryName;
	}
	
	/**
	 * @param employeeCategoryName the employeeCategoryName to set
	 */
	public void setEmployeeCategoryName(String employeeCategoryName) {
		this.employeeCategoryName = employeeCategoryName;
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
