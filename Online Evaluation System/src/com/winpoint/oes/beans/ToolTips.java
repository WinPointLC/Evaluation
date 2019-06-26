package com.winpoint.oes.beans;

import java.util.Date;

public class ToolTips {
	private Integer toolTipId;
	private Integer courseTypeId;
	private String toolTipDescription;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param toolTipId
	 * @param courseTypeId
	 * @param toolTipDescription
	 * @param createdBy
	 * @param createdDate
	 */
	public ToolTips(Integer toolTipId, Integer courseTypeId, String toolTipDescription, Integer createdBy,
			Date createdDate) {
		super();
		this.toolTipId = toolTipId;
		this.courseTypeId = courseTypeId;
		this.toolTipDescription = toolTipDescription;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	
	/**
	 * @return the toolTipId
	 */
	public Integer getToolTipId() {
		return toolTipId;
	}
	
	/**
	 * @param toolTipId the toolTipId to set
	 */
	public void setToolTipId(Integer toolTipId) {
		this.toolTipId = toolTipId;
	}
	
	/**
	 * @return the courseTypeId
	 */
	public Integer getCourseTypeId() {
		return courseTypeId;
	}
	
	/**
	 * @param courseTypeId the courseTypeId to set
	 */
	public void setCourseTypeId(Integer courseTypeId) {
		this.courseTypeId = courseTypeId;
	}
	
	/**
	 * @return the toolTipDescription
	 */
	public String getToolTipDescription() {
		return toolTipDescription;
	}
	
	/**
	 * @param toolTipDescription the toolTipDescription to set
	 */
	public void setToolTipDescription(String toolTipDescription) {
		this.toolTipDescription = toolTipDescription;
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
