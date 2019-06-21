package com.winpoint.oes.beans;

public class UserStudent {

	private String studentID;
	private String userID;
	private String parentName;
	private String parentNumber;
	private String studentCategory;
	private Integer createdBy;
	private String createdDate;
	/**
	 * @param studentID
	 * @param userID
	 * @param parentName
	 * @param parentNumber
	 * @param studentCategory
	 * @param createdBy
	 * @param createdDate
	 */
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
	/**
	 * @return the studentID
	 */
	public String getStudentID() {
		return studentID;
	}
	/**
	 * @param studentID the studentID to set
	 */
	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}
	/**
	 * @return the userID
	 */
	public String getUserID() {
		return userID;
	}
	/**
	 * @param userID the userID to set
	 */
	public void setUserID(String userID) {
		this.userID = userID;
	}
	/**
	 * @return the parentName
	 */
	public String getParentName() {
		return parentName;
	}
	/**
	 * @param parentName the parentName to set
	 */
	public void setParentName(String parentName) {
		this.parentName = parentName;
	}
	/**
	 * @return the parentNumber
	 */
	public String getParentNumber() {
		return parentNumber;
	}
	/**
	 * @param parentNumber the parentNumber to set
	 */
	public void setParentNumber(String parentNumber) {
		this.parentNumber = parentNumber;
	}
	/**
	 * @return the studentCategory
	 */
	public String getStudentCategory() {
		return studentCategory;
	}
	/**
	 * @param studentCategory the studentCategory to set
	 */
	public void setStudentCategory(String studentCategory) {
		this.studentCategory = studentCategory;
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
