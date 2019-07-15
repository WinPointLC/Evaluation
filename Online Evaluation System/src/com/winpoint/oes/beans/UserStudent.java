package com.winpoint.oes.beans;

import java.util.Date;

public class UserStudent {

	private Integer userId;
	private String parentName;
	private String parentMobileNumber;
	private Integer clientCategoryId;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param userId
	 * @param parentName
	 * @param parentMobileNumber
	 * @param clientCategoryId
	 * @param createdBy
	 * @param createdDate
	 */
	public UserStudent(Integer userId, String parentName, String parentMobileNumber, Integer clientCategoryId,
			Integer createdBy, Date createdDate) {
		super();
		this.userId = userId;
		this.parentName = parentName;
		this.parentMobileNumber = parentMobileNumber;
		this.clientCategoryId = clientCategoryId;
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
	 * @return the parentMobileNumber
	 */
	public String getParentMobileNumber() {
		return parentMobileNumber;
	}
	
	/**
	 * @param parentMobileNumber the parentMobileNumber to set
	 */
	public void setParentMobileNumber(String parentMobileNumber) {
		this.parentMobileNumber = parentMobileNumber;
	}
	
	/**
	 * @return the clientCategoryId
	 */
	public Integer getClientCategoryId() {
		return clientCategoryId;
	}
	
	/**
	 * @param clientCategoryId the clientCategoryId to set
	 */
	public void setClientCategoryId(Integer clientCategoryId) {
		this.clientCategoryId = clientCategoryId;
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
