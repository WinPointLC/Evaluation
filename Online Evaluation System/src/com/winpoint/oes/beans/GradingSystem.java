package com.winpoint.oes.beans;

public class GradingSystem {
	private Integer gradeId;
	private Integer marksLowerLimit;
	private Integer marksHigherLimit;
	private Integer createdBy;
	private String createdDate;
	
	public GradingSystem(Integer gradeId, Integer marksLowerLimit, Integer marksHigherLimit, Integer createdBy,
			String createdDate) {
		super();
		this.gradeId = gradeId;
		this.marksLowerLimit = marksLowerLimit;
		this.marksHigherLimit = marksHigherLimit;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	public Integer getGradeId() {
		return gradeId;
	}
	public void setGradeId(Integer gradeId) {
		this.gradeId = gradeId;
	}
	public Integer getMarksLowerLimit() {
		return marksLowerLimit;
	}
	public void setMarksLowerLimit(Integer marksLowerLimit) {
		this.marksLowerLimit = marksLowerLimit;
	}
	public Integer getMarksHigherLimit() {
		return marksHigherLimit;
	}
	public void setMarksHigherLimit(Integer marksHigherLimit) {
		this.marksHigherLimit = marksHigherLimit;
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
