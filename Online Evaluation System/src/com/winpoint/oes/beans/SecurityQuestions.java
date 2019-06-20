package com.winpoint.oes.beans;

public class SecurityQuestions {

	public SecurityQuestions(String createdDate, Integer securityQuestionID, String question, Integer createdBy) {
		super();
		this.createdDate = createdDate;
		this.securityQuestionID = securityQuestionID;
		this.question = question;
		this.createdBy = createdBy;
	}
	
	private Integer securityQuestionID;
	private String question;
	private Integer createdBy;
	private String createdDate;

	
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public Integer getSecurityQuestionID() {
		return securityQuestionID;
	}
	public void setSecurityQuestionID(Integer securityQuestionID) {
		this.securityQuestionID = securityQuestionID;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public Integer getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(Integer createdBy) {
		this.createdBy = createdBy;
	}
	
}