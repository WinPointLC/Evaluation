package com.winpoint.oes.beans;

import java.util.Date;

public class Rules {
	private Integer rulesId;
	private String rulesDescription;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param rulesId
	 * @param rulesDescription
	 * @param createdBy
	 * @param createdDate
	 */
	public Rules(Integer rulesId, String rulesDescription, Integer createdBy, Date createdDate) {
		super();
		this.rulesId = rulesId;
		this.rulesDescription = rulesDescription;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	
	public Rules(int rulesId, String rulesDescription) {
		// TODO Auto-generated constructor stub
		this.rulesId = rulesId;
		this.rulesDescription = rulesDescription;
	}

	public Rules(String ruleDescription) {
		// TODO Auto-generated constructor stub
		this.rulesDescription = ruleDescription;
	}

	/**
	 * @return the rulesId
	 */
	public Integer getRulesId() {
		return rulesId;
	}
	
	/**
	 * @param rulesId the rulesId to set
	 */
	public void setRulesId(Integer rulesId) {
		this.rulesId = rulesId;
	}
	
	/**
	 * @return the rulesDescription
	 */
	public String getRulesDescription() {
		return rulesDescription;
	}
	
	/**
	 * @param rulesDescription the rulesDescription to set
	 */
	public void setRulesDescription(String rulesDescription) {
		this.rulesDescription = rulesDescription;
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
