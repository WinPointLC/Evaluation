package com.winpoint.oes.beans;
/**
 * The class to store the Batch details of each course at WinPoint.
 * @author Sanika
 * 
 */
public class BatchDetails {

	private String batchID;
	private String courseID;	
	private String facultyID;
	private String startDate;
	private String endDate;
	private Integer createdBy;
	private String createdDate;

	/**
	 * 
	 * @param batchID Stores the ID of the batch.
	 * @param courseID Stores and references the ID of the course.
	 * @param facultyID ID of the faculty who is conducting the course.
	 * @param startDate	Stores the Start date of the batch, in the form Java Date.
	 * @param endDate Stores the end date of the batch, in the form Java Date.
	 * @param createdBy Name of the person who created the batch.
	 * @param createdDate Date of creation of batch.
	 */
	
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
