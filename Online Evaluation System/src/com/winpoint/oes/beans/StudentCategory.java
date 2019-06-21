package com.winpoint.oes.beans;

public class StudentCategory {
	
	private String studentCategoryID;
	private String studentCategoryName;
	private Integer createdBy;
	private String createdDate;
	/**
	 * @param studentCategoryID
	 * @param studentCategoryName
	 * @param createdBy
	 * @param createdDate
	 */
	public StudentCategory(String studentCategoryID, String studentCategoryName, Integer createdBy,
			String createdDate) {
		super();
		this.studentCategoryID = studentCategoryID;
		this.studentCategoryName = studentCategoryName;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	/**
	 * @return the studentCategoryID
	 */
	public String getStudentCategoryID() {
		return studentCategoryID;
	}
	/**
	 * @param studentCategoryID the studentCategoryID to set
	 */
	public void setStudentCategoryID(String studentCategoryID) {
		this.studentCategoryID = studentCategoryID;
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
