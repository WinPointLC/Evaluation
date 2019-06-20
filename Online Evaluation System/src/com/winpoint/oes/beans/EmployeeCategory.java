package com.winpoint.oes.beans;

public class EmployeeCategory {
	private String empCategoryID;
	private String empCategoryName;
	private Integer createdBy;
	private String createdDate;
	public String getEmpCategoryID() {
		return empCategoryID;
	}
	
	public EmployeeCategory(String empCategoryID, String empCategoryName, Integer createdBy, String createdDate) {
		super();
		this.empCategoryID = empCategoryID;
		this.empCategoryName = empCategoryName;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	public void setEmpCategoryID(String empCategoryID) {
		this.empCategoryID = empCategoryID;
	}
	public String getEmpCategoryName() {
		return empCategoryName;
	}
	public void setEmpCategoryName(String empCategoryName) {
		this.empCategoryName = empCategoryName;
	}
	public Integer getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(Integer createdBy) {
		this.createdBy = createdBy;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	

}
