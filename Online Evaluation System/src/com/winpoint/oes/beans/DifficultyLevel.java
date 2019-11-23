package com.winpoint.oes.beans;

import java.util.Date;

public class DifficultyLevel {
	private Integer difficultyLevelId;
	private String difficultyLevelName;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param difficultyLevelId
	 * @param difficultyLevelName
	 */
	public DifficultyLevel(Integer difficultyLevelId, String difficultyLevelName) {
		super();
		this.difficultyLevelId = difficultyLevelId;
		this.difficultyLevelName = difficultyLevelName;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	
	/**
	 * @return the difficultyLevelId
	 */
	public Integer getDifficultyLevelId() {
		return difficultyLevelId;
	}
	
	/**
	 * @param difficultyLevelId the difficultyLevelId to set
	 */
	public void setDifficultyLevelId(Integer difficultyLevelId) {
		this.difficultyLevelId = difficultyLevelId;
	}
	
	/**
	 * @return the difficultyLevelName
	 */
	public String getDifficultyLevelName() {
		return difficultyLevelName;
	}
	
	/**
	 * @param difficultyLevelName the difficultyLevelName to set
	 */
	public void setDifficultyLevelName(String difficultyLevelName) {
		this.difficultyLevelName = difficultyLevelName;
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
