package com.winpoint.oes.beans;

public class StudentCourseFeesBean {
	private Integer userId;
	private String fisrtName;
	private String lastName;
	private Integer courseId;
	private String courseName;
	private String feeStatus;
	private Integer fees;
	
	public StudentCourseFeesBean(Integer userId, String fisrtName, String lastName, Integer courseId, String courseName,
			String feeStatus, Integer fees) {
		this.userId = userId;
		this.fisrtName = fisrtName;
		this.lastName = lastName;
		this.courseId = courseId;
		this.courseName = courseName;
		this.feeStatus = feeStatus;
		this.fees = fees;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getFisrtName() {
		return fisrtName;
	}

	public void setFisrtName(String fisrtName) {
		this.fisrtName = fisrtName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Integer getCourseId() {
		return courseId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getFeeStatus() {
		return feeStatus;
	}

	public void setFeeStatus(String feeStatus) {
		this.feeStatus = feeStatus;
	}

	public Integer getFees() {
		return fees;
	}

	public void setFees(Integer fees) {
		this.fees = fees;
	}
}
