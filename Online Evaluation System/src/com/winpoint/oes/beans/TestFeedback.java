package com.winpoint.oes.beans;

import java.util.Date;

public class TestFeedback {
	int userTestId;
	int feedbackQuestionId;
	String response;
	int createdBy;
	Date createdDate;
	
	
	public TestFeedback() {
		super();
	}


	public TestFeedback(int userTestId, int feedbackQuestionId, String response, int createdBy, Date createdDate) {
		super();
		this.userTestId = userTestId;
		this.feedbackQuestionId = feedbackQuestionId;
		this.response = response;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}


	public int getUserTestId() {
		return userTestId;
	}


	public void setUserTestId(int userTestId) {
		this.userTestId = userTestId;
	}


	public int getFeedbackQuestionId() {
		return feedbackQuestionId;
	}


	public void setFeedbackQuestionId(int feedbackQuestionId) {
		this.feedbackQuestionId = feedbackQuestionId;
	}


	public String getResponse() {
		return response;
	}


	public void setResponse(String response) {
		this.response = response;
	}


	public int getCreatedBy() {
		return createdBy;
	}


	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}


	public Date getCreatedDate() {
		return createdDate;
	}


	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
}
