package com.winpoint.oes.beans;

public class EvaluationType {
	/**
	 * Stores the information of the evaluation type for a course.
	 */
	private Integer evaluationTypeID;
	private String evaluationTypeName;
	private Integer createdBy;
	private String createdDate;
	
	/**
	 * The constructor for the class EvaluationType.
	 * @param evaluationTypeID Stores the ID of the type of evaluation conducted for a specific course.
	 * @param evaluationTypeName What kind of the evaluation is to be conducted for the course is given in this field.
	 * @param createdBy Name of the person who added the specific evaluation test type, like MCQs or Subjective questions. 
	 * @param createdDate Date of addition of the evaluation type.
	 */
	public EvaluationType(Integer evaluationTypeID, String evaluationTypeName, Integer createdBy, String createdDate) {
		super();
		this.evaluationTypeID = evaluationTypeID;
		this.evaluationTypeName = evaluationTypeName;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}

	/**
	 * @return the evaluationTypeID
	 */
	public Integer getEvaluationTypeID() {
		return evaluationTypeID;
	}

	/**
	 * @param evaluationTypeID the evaluationTypeID to set
	 */
	public void setEvaluationTypeID(Integer evaluationTypeID) {
		this.evaluationTypeID = evaluationTypeID;
	}

	/**
	 * @return the evaluationTypeName
	 */
	public String getEvaluationTypeName() {
		return evaluationTypeName;
	}

	/**
	 * @param evaluationTypeName the evaluationTypeName to set
	 */
	public void setEvaluationTypeName(String evaluationTypeName) {
		this.evaluationTypeName = evaluationTypeName;
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
