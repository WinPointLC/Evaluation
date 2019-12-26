package com.winpoint.oes.beans;

import java.util.Date;

public class Course {
	private Integer courseId;
	private String courseName;
	private Integer courseDuration;
	private Integer courseFees;
	private Integer streamId;
	private Integer courseTypeId;
	private String coursewareExist;
	private Integer evaluationTypeId;
	private String iconLocation;
	private Integer totalTests;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param courseId
	 * @param courseName
	 * @param courseDuration
	 * @param fees
	 * @param streamId
	 * @param courseTypeId
	 * @param coursewareExist
	 * @param evaluationTypeId
	 * @param totalTests
	 * @param createdBy
	 * @param createdDate
	 */
	public Course(Integer courseId, String courseName, Integer courseDuration, Integer courseFees, Integer streamId,
			Integer courseTypeId, String coursewareExist, Integer evaluationTypeId, Integer totalTests,
			Integer createdBy, Date createdDate) {
		super();
		this.courseId = courseId;
		this.courseName = courseName;
		this.courseDuration = courseDuration;
		this.courseFees = courseFees;
		this.streamId = streamId;
		this.courseTypeId = courseTypeId;
		this.coursewareExist = coursewareExist;
		this.evaluationTypeId = evaluationTypeId;
		this.totalTests = totalTests;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	
	public Course(int courseId, String courseName, int streamId, int courseTypeId, String iconLocation) {
		this.courseId = courseId;
		this.courseName = courseName;
		this.streamId = streamId;
		this.courseTypeId = courseTypeId;
		this.iconLocation = iconLocation;
	}

	/**
	 * @return the courseId
	 */
	public Integer getCourseId() {
		return courseId;
	}
	
	/**
	 * @param courseId the courseId to set
	 */
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	
	/**
	 * @return the courseName
	 */
	public String getCourseName() {
		return courseName;
	}
	
	/**
	 * @param courseName the courseName to set
	 */
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	
	/**
	 * @return the courseDuration
	 */
	public Integer getCourseDuration() {
		return courseDuration;
	}
	
	/**
	 * @param courseDuration the courseDuration to set
	 */
	public void setCourseDuration(Integer courseDuration) {
		this.courseDuration = courseDuration;
	}
	
	/**
	 * @return the fees
	 */
	public Integer getCourseFees() {
		return courseFees;
	}
	
	/**
	 * @param fees the fees to set
	 */
	public void setCourseFees(Integer courseFees) {
		this.courseFees = courseFees;
	}
	
	/**
	 * @return the streamId
	 */
	public Integer getStreamId() {
		return streamId;
	}
	
	/**
	 * @param streamId the streamId to set
	 */
	public void setStreamId(Integer streamId) {
		this.streamId = streamId;
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
	 * @return the coursewareExist
	 */
	public String getCoursewareExist() {
		return coursewareExist;
	}
	
	/**
	 * @param coursewareExist the coursewareExist to set
	 */
	public void setCoursewareExist(String coursewareExist) {
		this.coursewareExist = coursewareExist;
	}
	
	/**
	 * @return the evaluationTypeId
	 */
	public Integer getEvaluationTypeId() {
		return evaluationTypeId;
	}
	
	/**
	 * @param evaluationTypeId the evaluationTypeId to set
	 */
	public void setEvaluationTypeId(Integer evaluationTypeId) {
		this.evaluationTypeId = evaluationTypeId;
	}
	
	/**
	 * @return the iconLocation
	 */
	public String getIconLocation() {
		return iconLocation;
	}
	
	/**
	 * @param iconLocation the iconLocation to set
	 */
	public void setIconLocation(String iconLocation) {
		this.iconLocation = iconLocation;
	}
	/**
	 * @return the totalTests
	 */
	public Integer getTotalTests() {
		return totalTests;
	}
	
	/**
	 * @param totalTests the totalTests to set
	 */
	public void setTotalTests(Integer totalTests) {
		this.totalTests = totalTests;
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
