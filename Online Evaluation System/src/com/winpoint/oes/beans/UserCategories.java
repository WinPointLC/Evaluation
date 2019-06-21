package com.winpoint.oes.beans;

public class UserCategories {
	private String userCategoryID;
	private String categoryName;
	private Integer createdBy;
	private String createdDate;
	/**
	 * @param userCategoryID
	 * @param categoryName
	 * @param createdBy
	 * @param createdDate
	 */
	public UserCategories(String userCategoryID, String categoryName, Integer createdBy, String createdDate) {
		super();
		this.userCategoryID = userCategoryID;
		this.categoryName = categoryName;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	/**
	 * @return the userCategoryID
	 */
	public String getUserCategoryID() {
		return userCategoryID;
	}
	/**
	 * @param userCategoryID the userCategoryID to set
	 */
	public void setUserCategoryID(String userCategoryID) {
		this.userCategoryID = userCategoryID;
	}
	/**
	 * @return the categoryName
	 */
	public String getCategoryName() {
		return categoryName;
	}
	/**
	 * @param categoryName the categoryName to set
	 */
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
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
