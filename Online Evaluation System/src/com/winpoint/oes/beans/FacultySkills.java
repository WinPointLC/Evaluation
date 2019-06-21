package com.winpoint.oes.beans;

public class FacultySkills {
	private Integer userId;
	private String skillSet;
	private Integer createdBy;
	private String createdDate;
	
	public Integer getUserId() {
		return userId;
	}
	public FacultySkills(Integer userId, String skillSet, Integer createdBy, String createdDate) {
		super();
		this.userId = userId;
		this.skillSet = skillSet;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getSkillSet() {
		return skillSet;
	}
	public void setSkillSet(String skillSet) {
		this.skillSet = skillSet;
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
