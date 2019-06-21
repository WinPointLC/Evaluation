package com.winpoint.oes.beans;

public class StudentCategory {
	
	private String studentCategoryID;
	private String studentCategoryName;
	private Integer createdBy;
	private String createdDate;
	
	public StudentCategory(String studentCategoryID, String studentCategoryName, Integer createdBy, String createdDate) {
		super();
		this.studentCategoryID = studentCategoryID;
		this.studentCategoryName = studentCategoryName;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
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
	
	public String getStudentCategoryID() {
		return studentCategoryID;
	}
	
	public void setStudentCategoryID(String studentCategoryID) {
		this.studentCategoryID = studentCategoryID;
	}
	
	public String getStudentCategoryName() {
		return studentCategoryName;
	}
	
	public void setStudentCategoryName(String studentCategoryName) {
		this.studentCategoryName = studentCategoryName;
	}
}
