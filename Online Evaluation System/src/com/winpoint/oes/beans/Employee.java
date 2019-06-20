package com.winpoint.oes.beans;

public class Employee {
	
	public Employee(Integer userID, Double salary, String dateOfJoining, String empCategoryID, Integer createdBy,
			String createdDate) {
		super();
		this.userID = userID;
		this.salary = salary;
		this.dateOfJoining = dateOfJoining;
		this.empCategoryID = empCategoryID;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}

	private Integer userID;
	private Double salary;
	private String dateOfJoining;
	private String empCategoryID;
	private Integer createdBy;
	private String createdDate;
	
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	public Double getSalary() {
		return salary;
	}
	public void setSalary(Double salary) {
		this.salary = salary;
	}
	public String getDateOfJoining() {
		return dateOfJoining;
	}
	public void setDateOfJoining(String dateOfJoining) {
		this.dateOfJoining = dateOfJoining;
	}
	public String getEmpCategoryID() {
		return empCategoryID;
	}
	public void setEmpCategoryID(String empCategoryID) {
		this.empCategoryID = empCategoryID;
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
