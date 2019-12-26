package com.winpoint.oes.beans;

import java.util.Date;

/**
 * The class will store the ID of Security Questions already added as well as add them dynamically.
 * @author Sahil Naphade
 *
 */
public class SecurityQuestions {
	private Integer securityQuestionId;
	private String securityQuestion;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param securityQuestionId
	 * @param securityQuestion
	 * @param createdBy
	 * @param createdDate
	 */
	public SecurityQuestions(Integer securityQuestionId, String securityQuestion, Integer createdBy, Date createdDate) {
		super();
		this.securityQuestionId = securityQuestionId;
		this.securityQuestion = securityQuestion;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	
	public SecurityQuestions(int securityQuestionId, String securityQuestion) {
		this.securityQuestionId = securityQuestionId;
		this.securityQuestion = securityQuestion;
	}

	/**
	 * @return the securityQuestionId
	 */
	public Integer getSecurityQuestionId() {
		return securityQuestionId;
	}
	
	/**
	 * @param securityQuestionId the securityQuestionId to set
	 */
	public void setSecurityQuestionId(Integer securityQuestionId) {
		this.securityQuestionId = securityQuestionId;
	}
	
	/**
	 * @return the securityQuestion
	 */
	public String getSecurityQuestion() {
		return securityQuestion;
	}
	
	/**
	 * @param securityQuestion the securityQuestion to set
	 */
	public void setSecurityQuestion(String securityQuestion) {
		this.securityQuestion = securityQuestion;
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