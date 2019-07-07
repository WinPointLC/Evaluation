package com.winpoint.oes.beans;

import java.util.Date;

/**
 * Provides functionality to add to the skill-set of the faculty.
 * <p>
 * For example, if one of the faculty adds a new skill to his portfolio, it can be added to the same in the database.
 */
public class FacultySkills {
	
	private Integer userId;
	private String skillSet;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param userId
	 * @param skillSet
	 * @param createdBy
	 * @param createdDate
	 */
	public FacultySkills(Integer userId, String skillSet, Integer createdBy, Date createdDate) {
		super();
		this.userId = userId;
		this.skillSet = skillSet;
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
	 * @return the skillSet
	 */
	public String getSkillSet() {
		return skillSet;
	}
	
	/**
	 * @param skillSet the skillSet to set
	 */
	public void setSkillSet(String skillSet) {
		this.skillSet = skillSet;
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
