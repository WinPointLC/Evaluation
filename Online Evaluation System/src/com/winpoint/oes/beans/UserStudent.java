package com.winpoint.oes.beans;

public class UserStudent {

	private String studentID;
	private String userID;
	private String parentName;
	private String parentNumber;
	private String studentCategory;
	private Integer createdBy;
	private String createdDate;
	
	public UserStudent(String studentID, String userID, String parentName, String parentNumber, String studentCategory,
			Integer createdBy, String createdDate) {
		super();
		this.studentID = studentID;
		this.userID = userID;
		this.parentName = parentName;
		this.parentNumber = parentNumber;
		this.studentCategory = studentCategory;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}

	public String getStudentID() {
		return studentID;
	}
	
	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}
	
	public String getUserID() {
		return userID;
	}
	
	public void setUserID(String userID) {
		this.userID = userID;
	}
	
	public String getParentName() {
		return parentName;
	}
	
	public void setParentName(String parentName) {
		this.parentName = parentName;
	}
	
	public String getParentNumber() {
		return parentNumber;
	}
	
	public void setParentNumber(String parentNumber) {
		this.parentNumber = parentNumber;
	}
	
	public String getStudentCategory() {
		return studentCategory;
	}
	
	public void setStudentCategory(String studentCategory) {
		this.studentCategory = studentCategory;
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
