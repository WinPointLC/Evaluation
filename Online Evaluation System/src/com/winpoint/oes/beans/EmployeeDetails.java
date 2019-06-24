package com.winpoint.oes.beans;

import java.util.Date;

/**
 * The class to store the information of an employee of WinPoint.
 * @author Sanika
 */
public class EmployeeDetails {
	private Integer userId;
	private Double employeeSalary;
	private String dateOfJoining;
	private Integer employeeCategoryId;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param userId
	 * @param salary
	 * @param dateOfJoining
	 * @param employeeCategoryId
	 * @param createdBy
	 * @param createdDate
	 */
	public EmployeeDetails(Integer userId, Double employeeSalary, String dateOfJoining, Integer employeeCategoryId, Integer createdBy,
			Date createdDate) {
		super();
		this.userId = userId;
		this.employeeSalary = employeeSalary;
		this.dateOfJoining = dateOfJoining;
		this.employeeCategoryId = employeeCategoryId;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	
	/**
	 * @return the userId
	 */
	public Integer getUserId() {
		return userId;
	}
	
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
	/**
	 * @return the salary
	 */
	public Double getEmployeeSalary() {
		return employeeSalary;
	}
	
	/**
	 * @param salary the salary to set
	 */
	public void setEmployeeSalary(Double employeeSalary) {
		this.employeeSalary = employeeSalary;
	}
	
	/**
	 * @return the dateOfJoining
	 */
	public String getDateOfJoining() {
		return dateOfJoining;
	}
	
	/**
	 * @param dateOfJoining the dateOfJoining to set
	 */
	public void setDateOfJoining(String dateOfJoining) {
		this.dateOfJoining = dateOfJoining;
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
