package com.winpoint.oes.beans;

public class EmployeeCategory {
	/**
	 * Stores the Category of the employee, including the ID and Category name.
	 */
	private String empCategoryID;
	private String empCategoryName;
	private Integer createdBy;
	private String createdDate;
	
	/**
	 * 
	 * @param empCategoryID ID of the category name stored.
	 * @param empCategoryName Name of the category, i.e. Administrator, Faculty or Non-teaching staff.
	 * @param createdBy	Stores the name of the creator of employee category.
	 * @param createdDate Stored the date of addition of the employee category.
	 */
	public EmployeeCategory(String empCategoryID, String empCategoryName, Integer createdBy, String createdDate) {
		super();
		this.empCategoryID = empCategoryID;
		this.empCategoryName = empCategoryName;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}

	/**
	 * @return the empCategoryID
	 */
	public String getEmpCategoryID() {
		return empCategoryID;
	}

	/**
	 * @param empCategoryID the empCategoryID to set
	 */
	public void setEmpCategoryID(String empCategoryID) {
		this.empCategoryID = empCategoryID;
	}

	/**
	 * @return the empCategoryName
	 */
	public String getEmpCategoryName() {
		return empCategoryName;
	}

	/**
	 * @param empCategoryName the empCategoryName to set
	 */
	public void setEmpCategoryName(String empCategoryName) {
		this.empCategoryName = empCategoryName;
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
