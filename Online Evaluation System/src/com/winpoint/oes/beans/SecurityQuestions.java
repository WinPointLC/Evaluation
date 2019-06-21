package com.winpoint.oes.beans;

public class SecurityQuestions {

	private Integer securityQuestionID;
	private String question;
	private Integer createdBy;
	private String createdDate;
	/**
	 * @param securityQuestionID
	 * @param question
	 * @param createdBy
	 * @param createdDate
	 */
	public SecurityQuestions(Integer securityQuestionID, String question, Integer createdBy, String createdDate) {
		super();
		this.securityQuestionID = securityQuestionID;
		this.question = question;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	/**
	 * @return the securityQuestionID
	 */
	public Integer getSecurityQuestionID() {
		return securityQuestionID;
	}
	/**
	 * @param securityQuestionID the securityQuestionID to set
	 */
	public void setSecurityQuestionID(Integer securityQuestionID) {
		this.securityQuestionID = securityQuestionID;
	}
	/**
	 * @return the question
	 */
	public String getQuestion() {
		return question;
	}
	/**
	 * @param question the question to set
	 */
	public void setQuestion(String question) {
		this.question = question;
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