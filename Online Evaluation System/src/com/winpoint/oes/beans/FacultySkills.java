package com.winpoint.oes.beans;

public class FacultySkills {
	/**
	 * Provides functionality to add to the skill-set of the faculty.
	 * <p>
	 * For example, if one of the faculty adds a new skill to his portfolio, it can be added to the same in the database.
	 */
	private Integer userId;
	private String skillSet;
	private Integer createdBy;
	private String createdDate;
	
	/**
	 * 
	 * @param userId Stores the user ID of the employee for whom the skill has to be added.
	 * <p> Cross-references the {@UserProfile} class.
	 * @param skillSet Name of the added skill set is stored.
	 * @param createdBy	Name of the person who added the skill set.
	 * @param createdDate Date of addition of the skill set.
	 */
	public FacultySkills(Integer userId, String skillSet, Integer createdBy, String createdDate) {
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
