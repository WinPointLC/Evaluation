package com.winpoint.oes.beans;

public class QuestionBank {
	/**
	 * The class to store the questions into the Database as well as retrieval of the same from the database.
	 */
	private Integer questionID;
	private Integer courseId;
	private Integer topicId;
	private String question;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String correctOption;
	private Integer totalMarks;
	private Integer difficultyLevelID;
	private Integer createdBy;
	private String createdDate;
	
	
	
	/**
	 * @param questionID Stores the unique ID of the question fetched or to be stored.
	 * @param courseId ID of the course for which the question is created. 
	 * @param topicId ID of the topic for the specific course, cross-referencing {@Topic} class.
	 * @param question Stores the question to be displayed.
	 * @param option1 Option 1 for the question.
	 * @param option2 Option 2 for the question.
	 * @param option3 Option 3 for the question.
	 * @param option4 Option 4 for the question.
	 * @param correctOption Correct option of the question.
	 * @param totalMarks Marks allotted to the question?
	 * @param difficultyLevelID Difficulty level ID of the question, cross-references {@DifficultyLevel} class.
	 * @param createdBy Name of the person who created and added the question.
	 * @param createdDate Date of creation of the Question.
	 */
	public QuestionBank(Integer questionID, Integer courseId, Integer topicId, String question, String option1,
			String option2, String option3, String option4, String correctOption, Integer totalMarks,
			Integer difficultyLevelID, Integer createdBy, String createdDate) {
		super();
		this.questionID = questionID;
		this.courseId = courseId;
		this.topicId = topicId;
		this.question = question;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.correctOption = correctOption;
		this.totalMarks = totalMarks;
		this.difficultyLevelID = difficultyLevelID;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}

	/**
	 * @return the questionID
	 */
	public Integer getQuestionID() {
		return questionID;
	}

	/**
	 * @param questionID the questionID to set
	 */
	public void setQuestionID(Integer questionID) {
		this.questionID = questionID;
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
	 * @return the difficultyLevelID
	 */
	public Integer getDifficultyLevelID() {
		return difficultyLevelID;
	}

	/**
	 * @param difficultyLevelID the difficultyLevelID to set
	 */
	public void setDifficultyLevelID(Integer difficultyLevelID) {
		this.difficultyLevelID = difficultyLevelID;
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