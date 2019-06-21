package com.winpoint.oes.beans;

public class BatchDetails {

	private String batchID;
	private String courseID;	
	private String facultyID;
	private String startDate;
	private String endDate;
	private Integer createdBy;
	private String createdDate;

	public BatchDetails(String batchID, String courseID, String facultyID, String startDate, String endDate,
			Integer createdBy, String createdDate) {
		super();
		this.batchID = batchID;
		this.courseID = courseID;
		this.facultyID = facultyID;
		this.startDate = startDate;
		this.endDate = endDate;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
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

	public String getBatchID() {
		return batchID;
	}
	
	public void setBatchID(String batchID) {
		this.batchID = batchID;
	}
	
	public String getCourseID() {
		return courseID;
	}
	
	public void setCourseID(String courseID) {
		this.courseID = courseID;
	}
	
	public String getFacultyID() {
		return facultyID;
	}
	
	public void setFacultyID(String facultyID) {
		this.facultyID = facultyID;
	}
	
	public String getStartDate() {
		return startDate;
	}
	
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	
	public String getEndDate() {
		return endDate;
	}
	
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

}
