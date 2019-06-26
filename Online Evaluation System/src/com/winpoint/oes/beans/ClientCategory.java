package com.winpoint.oes.beans;

import java.util.Date;

public class ClientCategory {
	private Integer clientCategoryId;
	private String clientCategory;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param clientCategoryId
	 * @param clientCategory
	 * @param createdBy
	 * @param createdDate
	 */
	public ClientCategory(Integer clientCategoryId, String clientCategory, Integer createdBy, Date createdDate) {
		this.clientCategoryId = clientCategoryId;
		this.clientCategory = clientCategory;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
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
	 * @return the clientCategory
	 */
	public String getClientCategory() {
		return clientCategory;
	}
	
	/**
	 * @param clientCategory the clientCategory to set
	 */
	public void setClientCategory(String clientCategory) {
		this.clientCategory = clientCategory;
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
