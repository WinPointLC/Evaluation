package com.winpoint.oes.beans;

import java.util.Date;

/**
 * Stores the category of the users.
 */
public class UserCategory {	
	private Integer userCategoryId;
	private String userCategoryName;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param userCategoryId
	 * @param categoryName
	 * @param createdBy
	 * @param createdDate
	 */
	public UserCategory(Integer userCategoryId, String userCategoryName, Integer createdBy, Date createdDate) {
		super();
		this.userCategoryId = userCategoryId;
		this.userCategoryName = userCategoryName;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	
	/**
	 * @return the userCategoryId
	 */
	public Integer getUserCategoryId() {
		return userCategoryId;
	}
	
	/**
	 * @param userCategoryId the userCategoryId to set
	 */
	public void setUserCategoryId(Integer userCategoryId) {
		this.userCategoryId = userCategoryId;
	}
	
	/**
	 * @return the categoryName
	 */
	public String getUserCategoryName() {
		return userCategoryName;
	}
	
	/**
	 * @param categoryName the categoryName to set
	 */
	public void setUserCategoryName(String userCategoryName) {
		this.userCategoryName = userCategoryName;
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
