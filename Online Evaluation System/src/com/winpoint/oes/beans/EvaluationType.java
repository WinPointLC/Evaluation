package com.winpoint.oes.beans;

public class EvaluationType {
	
	private Integer evaluationTypeID;
	private String evaluationTypeName;
	private Integer createdBy;
	private String createdDate;
	
	public EvaluationType(Integer evaluationTypeID, String evaluationTypeName, Integer createdBy, String createdDate) {
		super();
		this.evaluationTypeID = evaluationTypeID;
		this.evaluationTypeName = evaluationTypeName;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	public Integer getEvaluationTypeID() {
		return evaluationTypeID;
	}
	public void setEvaluationTypeID(Integer evaluationTypeID) {
		this.evaluationTypeID = evaluationTypeID;
	}
	public String getEvaluationTypeName() {
		return evaluationTypeName;
	}
	public void setEvaluationTypeName(String evaluationTypeName) {
		this.evaluationTypeName = evaluationTypeName;
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
