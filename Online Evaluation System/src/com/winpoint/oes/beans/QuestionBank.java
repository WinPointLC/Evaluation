package com.winpoint.oes.beans;

import java.util.Date;

/**
 * The class to store the questions into the Database as well as retrieval of the same from the database.
 */
public class QuestionBank {
	private Integer questionId;
	private Integer courseId;
	private Integer topicId;
	private String question;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String correctOption;
	private Integer totalMarks;
	private String explanation;
	private Integer difficultyLevelId;
	private String inCrt;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param questionId
	 * @param courseId
	 * @param topicId
	 * @param question
	 * @param option1
	 * @param option2
	 * @param option3
	 * @param option4
	 * @param correctOption
	 * @param totalMarks
	 * @param explanation
	 * @param difficultyLevelId
	 * @param inCrt
	 * @param createdBy
	 * @param createdDate
	 */
	public QuestionBank(Integer questionId, Integer courseId, Integer topicId, String question, String option1,
			String option2, String option3, String option4, String correctOption, Integer totalMarks, String explanation,
			Integer difficultyLevelId, String inCrt, Integer createdBy, Date createdDate) {
		super();
		this.questionId = questionId;
		this.courseId = courseId;
		this.topicId = topicId;
		this.question = question;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.correctOption = correctOption;
		this.totalMarks = totalMarks;
		this.explanation = explanation;
		this.difficultyLevelId = difficultyLevelId;
		this.inCrt = inCrt;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	
	public QuestionBank(int questionId, int courseId, int topicId, String question, String option1,
			String option2, String option3, String option4, String correctOption, int totalMarks, int difficultyLevelId) {
		this.questionId = questionId;
		this.question = question;
		this.courseId = courseId;
		this.topicId = topicId;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.correctOption = correctOption;
		this.totalMarks = totalMarks;
		this.difficultyLevelId = difficultyLevelId;
	}

	/**
	 * @return the questionId
	 */
	public Integer getQuestionId() {
		return questionId;
	}
	
	/**
	 * @param questionId the questionId to set
	 */
	public void setQuestionId(Integer questionId) {
		this.questionId = questionId;
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
	 * @return the topicId
	 */
	public Integer getTopicId() {
		return topicId;
	}
	
	/**
	 * @param topicId the topicId to set
	 */
	public void setTopicId(Integer topicId) {
		this.topicId = topicId;
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
	 * @return the option1
	 */
	public String getOption1() {
		return option1;
	}
	
	/**
	 * @param option1 the option1 to set
	 */
	public void setOption1(String option1) {
		this.option1 = option1;
	}
	
	/**
	 * @return the option2
	 */
	public String getOption2() {
		return option2;
	}
	
	/**
	 * @param option2 the option2 to set
	 */
	public void setOption2(String option2) {
		this.option2 = option2;
	}
	
	/**
	 * @return the option3
	 */
	public String getOption3() {
		return option3;
	}
	
	/**
	 * @param option3 the option3 to set
	 */
	public void setOption3(String option3) {
		this.option3 = option3;
	}
	
	/**
	 * @return the option4
	 */
	public String getOption4() {
		return option4;
	}
	
	/**
	 * @param option4 the option4 to set
	 */
	public void setOption4(String option4) {
		this.option4 = option4;
	}
	
	/**
	 * @return the correctOption
	 */
	public String getCorrectOption() {
		return correctOption;
	}
	
	/**
	 * @param correctOption the correctOption to set
	 */
	public void setCorrectOption(String correctOption) {
		this.correctOption = correctOption;
	}
	
	/**
	 * @return the totalMarks
	 */
	public Integer getTotalMarks() {
		return totalMarks;
	}
	
	/**
	 * @param totalMarks the totalMarks to set
	 */
	public void setTotalMarks(Integer totalMarks) {
		this.totalMarks = totalMarks;
	}
	
	/**
	 * @return the difficultyLevelId
	 */
	public Integer getDifficultyLevelId() {
		return difficultyLevelId;
	}
	
	/**
	 * @param difficultyLevelId the difficultyLevelId to set
	 */
	public void setDifficultyLevelId(Integer difficultyLevelId) {
		this.difficultyLevelId = difficultyLevelId;
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

	@Override
	public String toString() {
		return "QuestionBank [questionId=" + questionId + ", courseId=" + courseId + ", topicId=" + topicId
				+ ", question=" + question + ", option1=" + option1 + ", option2=" + option2 + ", option3=" + option3
				+ ", option4=" + option4 + ", correctOption=" + correctOption + ", totalMarks=" + totalMarks
				+ ", difficultyLevelId=" + difficultyLevelId + ", createdBy=" + createdBy + ", createdDate="
				+ createdDate + "]";
	}

	public String getInCrt() {
		return inCrt;
	}

	public void setInCrt(String inCrt) {
		this.inCrt = inCrt;
	}

	public String getExplanation() {
		return explanation;
	}

	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}
	
	
}