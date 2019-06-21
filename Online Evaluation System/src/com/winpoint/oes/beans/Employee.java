package com.winpoint.oes.beans;

public class Employee {

/**
 * The class to store the information of an employee of WinPoint.
 * @author Sanika
 */
	private Integer userID;
	private Double salary;
	private String dateOfJoining;
	private String empCategoryID;
	private Integer createdBy;
	private String createdDate;
	
	/**
	 * 
	 * @param userID Stores the User ID cross-referencing {@UserProfile} class.
	 * @param salary Stores the salary of the employee.
	 * @param dateOfJoining Stores the date of joining of the employee.
	 * @param empCategoryID Stores the Category of employee, like administrator, faculty or Non-teaching staff, cross-referencing the {@EmployeeCategory} class.
	 * @param createdBy Stores the information of the person who added the employee.
	 * @param createdDate Stores the date of addition of the employee.
	 */
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

	/**
	 * @return the userID
	 */
	public Integer getUserID() {
		return userID;
	}

	/**
	 * @param userID the userID to set
	 */
	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	/**
	 * @return the salary
	 */
	public Double getSalary() {
		return salary;
	}

	/**
	 * @param salary the salary to set
	 */
	public void setSalary(Double salary) {
		this.salary = salary;
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
