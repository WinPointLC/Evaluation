package com.winpoint.oes.beans;

public class UserCategories {
	
	public UserCategories(String userCategoryID, String categoryName, Integer createdBy, String createdDate) {
		super();
		this.userCategoryID = userCategoryID;
		this.categoryName = categoryName;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	private String userCategoryID;
	private String categoryName;
	private Integer createdBy;
	private String createdDate;
	public String getUserCategoryID() {
		return userCategoryID;
	}
	public void setUserCategoryID(String userCategoryID) {
		this.userCategoryID = userCategoryID;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
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
